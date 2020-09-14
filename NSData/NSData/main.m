//
//  main.m
//  NSData
//
//  Created by deng on 2020/5/30.
//  Copyright © 2020 professordeng. All rights reserved.
//

// 终端可以利用 open 打开下载的图片

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 设置 URL 对象
        NSURL *url = [NSURL URLWithString:@"https://cdn.jsdelivr.net/gh/professordeng/simple@gh-pages/assets/img/big.jpg"];
        // url 请求对象
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        
        // 将请求发给服务器，获得的数据存储在 NSData 对象中
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        
        if (!data) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"The file is %lu bytes", (unsigned long)[data length]);
        BOOL written = [data writeToFile:@"/tmp/sample.jpg" options:0 error:&error];
        
        if(!written) {
            NSLog(@"write failed: %@", [error localizedDescription]);
            return 1;
        }
        NSLog(@"Success!");
        
        // 读取磁盘数据到 NSData 中
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/sample.jpg"];
        NSLog(@"The file read from the disk has %lu bytes", (unsigned long)[readData length]);
    }
    return 0;
}
