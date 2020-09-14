//
//  main.m
//  NSString
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 生成长度不可变的字符串对象
        NSString *str = @"Hello World!\n";
        
        // 输出字符串对象，%@ 是专门用来输出 NSString 对象的
        NSLog(@"%@", str);
    }
    return 0;
}
