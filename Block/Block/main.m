//
//  main.m
//  Block
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

// 由于 Block 也是对象，为了避免内存泄露，不能直接在 Block 中使用 self
// __block 关键词可以使 Block 对象修改外部变量

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建两个数组对象，分别用于保存最初的字符串对象和去除元音字母后的版本
        NSArray *oldStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        NSLog(@"original strings: %@", oldStrings);
        NSMutableArray *newStrings = [NSMutableArray array];
        
        // 创建数组对象，保存需要从字符串中移除的字符
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        // 声明 Block 对象
        void (^devowelizer)(id, NSUInteger, BOOL *);
        
        // 将 Block 对象赋给变量（其实就是指向匿名方法的起始地址）
        // 可以将声明和定义合并
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // 枚举数组中的字符串，将所有出现的元音字母替换成空字符串
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            [newStrings addObject:newString];
        }; // Block 变量赋值结束
        
        // 枚举数组对象，针对每个数组中的对象，执行 Block 对象 devowelizer
        [oldStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new strings: %@", newStrings);
    }
    return 0;
}

