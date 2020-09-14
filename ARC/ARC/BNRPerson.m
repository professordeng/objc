// 父类实现

#import "BNRPerson.h"

@implementation BNRPerson

- (float)bodyMassIndex
{
    // self 类似 C++ 的 this 指针
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
