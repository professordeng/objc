//
//  main.m
//  targetAction
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

//  给计时器绑定目标，隔一段时间就触发某个对象的相应方法

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRLogger *logger = [[BNRLogger alloc] init];
        
        // 每 2 秒触发一次 logger 对象的 updateLastime 函数
        // repeats:YES 表示会重复调用
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}

