//
//  main.m
//  class
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import <Foundation/Foundation.h>

// 引入自己新建的类
#import "PEmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 使用默认的 alloc 和 init 生成并初始化对象
        PEmployee *mikey = [[PEmployee alloc] init];
        
        // 默认的初始化方法会将 int 和 float 设置为 0
        // 重新设置
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
        
        // 自然语言表示日期（已被淘汰）
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        
        // 输出 mikey 被雇佣时的日期
        NSLog(@"%@ hired on %@", mikey, mikey.hireDate);
    }
    return 0;
}
