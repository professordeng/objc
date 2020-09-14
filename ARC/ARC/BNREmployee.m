//

#import "BNREmployee.h"

// 类拓展，只能本类访问
@interface BNREmployee ()

@property (nonatomic) unsigned int officeAlarmCode;

@end

// 由于头文件使用 @class 说明，所以这里需要真正地引入头文件
#import "BNRAsset.h"

@implementation BNREmployee

// 自定义属性的存取方法
- (NSArray *)assets
{
    // 返回拷贝版，这样可防止外部修改自身属性
    return  [_assets copy];
}

- (void)setAssets:(NSArray *)a
{
    // mutableCopy 的返回对象是可修改类型
    _assets = [a mutableCopy];
}

- (void)addAsset:(BNRAsset *)a
{
    // assets 是否为 nil
    if (!_assets) {
        
        // 创建数组
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
}

- (unsigned int)valueOfAssets
{
    // 累加物品的转售价值
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

- (double)yearsOfEmployment
{
    // 是否拥有一个非 nil 的 hireDate
    if (self.hireDate) {
        // NSTimeInterval 是 double 类型
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
    } else {
        return 0;
    }
}

// 覆盖父类的方法
- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

// 重写 NSObject 的 description 方法
- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}


// 重写 NSObject 的 dealloc 方法，只是为了观察 ARC 是否起作用了
- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
