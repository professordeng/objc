//
//  main.m
//  NSLog
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 获取当前主机对象
        NSHost *host = [NSHost currentHost];
        
        // 获取当前主机的名字
        NSString *name = [host localizedName];
        
        // 输出名字，%@ 是 description 方法的返回参数，是 NSString 类型
        NSLog(@"host name is %@", name);
    }
    return 0;
}
