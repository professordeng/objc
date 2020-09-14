//
//  main.m
//  NSMutableArray
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建三个 NSDate 对象
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        // 创建空数组
        NSMutableArray *dateList = [NSMutableArray array];
        
        // 将两个 NSDate 对象加入新创建的数组
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        // 将 yesterday 指针插入数组的起始位置
        [dateList insertObject:yesterday atIndex:0];
        
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        // 删除 yesterday 指针
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", dateList[0]);
    }
    return 0;
}
