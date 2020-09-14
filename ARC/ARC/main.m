// ARC（Automatic Reference Counting）练习
// 修改 dealloc 函数，在其中输出相应语句，测试 ARC 是否起作用

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建长度可变数组，用来包含多个 BNREmployee 对象
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        // 创建 10 个 BNREmployee 对象并放入 employees 中
        for (int i = 0; i < 10; i++) {
            BNREmployee *employee = [[BNREmployee alloc] init];
            
            // 初始化 employee
            employee.weightInKilos = 90 + i;
            employee.heightInMeters = 1.8 - i/10.0;
            employee.employeeID = i;
            
            // 将新创建的 employee 加入数组
            [employees addObject:employee];
        }
        
        // 创建 10 个 BNRAsset 对象
        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            // 为 BNRAsset 对象设置合适的标签
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            // 生成 0 至 9 之间的随机整数（包含 0 和 9）
            NSUInteger randomIndex = random() % [employees count];
            
            // 从 employees 中随机取一个元素
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
        }
        
        // 遍历 employees 中的每一个元素并调用元素的 description 方法
        NSLog(@"Employees: %@", employees);
        
        // 接下来释放数组索引为 5 的元素，会发生如下反应
        // 1. 调用该元素的 dealloc 函数
        // 2. 调用该元素的实例变量的 dealloc 函数
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        
        // 接下来清空所有元素，其实只要将数组指针指向 nil 即可，计数为 0，所有元素自动执行 dealloc
        NSLog(@"Giving up ownership of one employee");
        employees = nil;
    }
    return 0;
}
