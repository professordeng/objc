//
//  main.m
//  NSRange
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

// 查找含 aa 的字符串

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 读入文件并将数据保存在字符串中
        // error:NULL 表示不处理发生的错误
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        
        // 将所得字符串按 “\n” 进行分割，并保存在数组中
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        // 快速枚举，逐个处理数组中的元素
        for(NSString *n in names) {
            
            // 查找字符串 “aa”（忽略大小写）
            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
            
            // 匹配则输出对应的字符串
            if (r.location != NSNotFound) {
                NSLog(@"%@", n);
            }
        }
    }
    return 0;
}
