//
//  main.m
//  init
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

// 编写 init 方法时，应该遵循如下规则：
// - 其他初始方法都应该（直接地或间接地）调用指定初始化方法
// - 指定初始化方法应该先调用父类的指定初始化方法，然后再对实例变量进行初始化
// - 若指定初始化方法和父类不同（方法名不同），就必须覆盖父类的指定初始化方法，并调用新的初始化方法
// - 若某个类有多个初始化方法，就应该在相应的头文件中明确地注明哪个方法是指定初始化方法

// 如果想禁用 init 方法，那么在子类中覆盖父类的 init 方法并在 init 中抛出异常
// - [NSException raise...:format...]

#import <Foundation/Foundation.h>
#import "PAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PAppliance *a = [[PAppliance alloc] init];
        NSLog(@"a is %@", a);
        [a setProductName:@"Washing Machine"];
        [a setVoltage:240];
        NSLog(@"a is %@", a);
    }
    return 0;
}
