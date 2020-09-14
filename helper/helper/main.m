//
//  main.m
//  helper
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PLogger *logger = [[PLogger alloc] init];
        NSURL *url = [NSURL URLWithString:@"https://professordeng.com/simple/sitemap.xml"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        // 发出请求，并将得到的数据委托给 logger 处理
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request delegate:logger];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
