// 使用 command-B 可以快速构建项目而不运行，这样可以快速查看语法错误

#import "BNRAsset.h"

@implementation BNRAsset


// 重写 NSObject 中的 description 方法
- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

// 重写 NSObject 中的 dealloc 方法，观察 ARC 是否起作用
- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
