//
//  ViewController.m
//  NSURLSession
//
//  Created by deng on 2020/8/11.
//  Copyright © 2020 deng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置 URL
    NSURL *url = [NSURL URLWithString: @"https://mainote.maimemo.com/api/auth/login"];
       
    // 初始化请求
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
       
    // 设置请求方法为 POST 请求
    [request setHTTPMethod:@"POST"];
       
    // 请求体类型是 json
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
          
    // 设置请求体
    NSDictionary *json = @{
        @"identity" : @"wf.deng@maimemo.com",
        @"password" : @"123456"
    };
       
    // 协议数据需要封装为 NSData
    NSData *postData = [NSJSONSerialization dataWithJSONObject:json options:NSJSONWritingPrettyPrinted error:nil];
       
    // 将数据放到请求体中
    [request setHTTPBody:postData];
       
// 创建默认配置对象
NSURLSessionConfiguration *defaultConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
   
// 5 秒请求超时
defaultConfig.timeoutIntervalForRequest = 5.0;
   
   
// 初始化会话，配置就是默认会话，放到主线程
NSURLSession *session = [NSURLSession sessionWithConfiguration:defaultConfig delegate:nil delegateQueue:[NSOperationQueue mainQueue]];
       
    // 设置请求任务，包括请求成功后需要做的事
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (!error) {
            NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
            if ([httpResponse statusCode] != 200) {
                NSLog(@"登录失败");
            }
               
            // 转换为字典
            NSDictionary *loginMessage = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
            NSLog(@"%@", loginMessage);
        } else {
            NSLog(@"error : %@", error.localizedDescription);
        }
    }];
    [task resume];
}

@end
