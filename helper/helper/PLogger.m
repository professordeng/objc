//
//  PLogger.m
//  helper
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import "PLogger.h"

@implementation PLogger

// 收到服务器发来的数据后调用该方法
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    // 如果 NSMutableData 对象不存在，则创建
    if(!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}

// 完成数据传输后调用该方法
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    // 如果需要输出获取的全部数据，则可以取消下面这行代码的注释
    // NSLog(@"The whole string is %@", string);
}

// 获取数据失败时会被调用
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

@end
