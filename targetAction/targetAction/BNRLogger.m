//
//  BNRLogger.m
//  targetAction
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger


- (NSString *)lastTimeString
{
    // 日期格式，static 表示所有对象共享
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter) { // 未初始化
        
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

@end
