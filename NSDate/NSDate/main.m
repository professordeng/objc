//
//  main.m
//  NSDate
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    // 写基于命令行的的程序时，有这个 autoreleasepool
    @autoreleasepool {
        // 创建日期对象，时间是当前时间
        NSDate *now = [NSDate date];
        
        // 显示日期对象的内存起始地址
        NSLog(@"This NSDate object lives at %p", now);
        
        // 输出日期对象的时间
        NSLog(@"The date is %@", now);
        
        // 计算 1970～now 所经历的时间
        double seconds = [now timeIntervalSince1970];
        
        // 时间的单位是秒
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
    }
    return 0;
}
