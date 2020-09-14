//
//  main.m
//  NSArray
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 当前时间
        NSDate *now = [NSDate date];
        
        // 后 24 小时
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        
        // 前 24 小时
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        // 创建一个数组包含这三个 NSDate 对象
        // @ 是字面量语法，字面量（literal）用于表达源代码中一个固定值的表示法（notation）
        NSArray *dateList = @[now, tomorrow, yesterday];
        
        // 计数循遍历数组
        for (int i = 0; i < dateList.count; i++) {
            NSLog(@"Here is a date: %@", dateList[i]);
        }
        
        // 使用快速枚举（fast enumeration）遍历数组
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
    }
    return 0;
}
