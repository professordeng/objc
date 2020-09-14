//
//  main.m
//  notification
//
//  Created by deng on 2020/5/30.
//  Copyright © 2020 professordeng. All rights reserved.
//

// 启动程序后，修改时区，程序会作出响应

#import <Foundation/Foundation.h>
#import "PLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 添加观察者 logger 对象，响应动作是 zoneChange
        PLogger *logger = [[PLogger alloc] init];
        
        // 观察对象是 logger，响应方法是 logger 的 zoneChange 方法
        // 触发时机是时区发生改变
        [[NSNotificationCenter defaultCenter] addObserver:logger selector:@selector(zoneChange:) name:NSSystemTimeZoneDidChangeNotification object:nil];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}

