//
//  PEmployee.m
//  class
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import "PEmployee.h"

@implementation PEmployee

- (double)yearOfEmployment
{
    // 是否拥有一个非 nil 的 hireDate
    // 默认的 init 函数会将对象设置为 nil
    if (self.hireDate) {
        // NSTimeInterval 是 double 类型，只不过用 typedef 修饰了一下
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        
        // 总秒数 / 一年的描述 = 年限
        return secs / 31557600.0;
    } else {
        return 0;
    }
}

// - 重写父类 PPerson 的方法
- (float)bodyMassIndex
{
    // 调用父类 PPerson 的 bodyMassIndex 方法
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

// - description : 类似 C++ 的 toString() 方法，构造出 NSString 后可供 NSLog 直接输出
- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}

@end

