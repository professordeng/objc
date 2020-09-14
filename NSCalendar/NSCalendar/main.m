//
//  main.m
//  NSCalendar
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

// 计算你的年龄
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // NSDateComponents 是以很多单位描述时间的对象
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        
        // 设置年
        [comps setYear:1997];
        
        // 设置月
        [comps setMonth:6];
        
        // 设置日
        [comps setDay:4];
        
        // 设置时
        [comps setHour:20];
        
        // 设置分
        [comps setMinute:40];
        
        // 设置秒
        [comps setSecond:20];
        
        // 生成日历对象，Gregorian 指公历
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        
        // 调用 g 的相应方法（传入 comps）生成 NSDate 对象
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        // 创建当前时间的 NSDate 对象
        NSDate *new = [NSDate date];
        
        // 计算时间差，该时间差就是你的年龄，不过是以秒的单位
        NSTimeInterval secondsSinceEarlierDate = [new timeIntervalSinceDate:dateOfBirth];
        
        // 输出时间差
        NSLog(@"%f seconds.", secondsSinceEarlierDate);
    }
    return 0;
}
