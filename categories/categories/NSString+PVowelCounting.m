//
//  NSString+PVowelCounting.m
//  categories
//
//  Created by deng on 2020/5/30.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import "NSString+PVowelCounting.h"

@implementation NSString (PVowelCounting)

// 统计元音个数
- (int)bnr_vowelCount
{
    // 构建元音字母组成的集合
    NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOUY"];
    
    // 逐个匹配
    NSUInteger count = [self length];
    int sum = 0;
    for(int i = 0; i < count; i++) {
        unichar c = [self characterAtIndex:i];
        // 判断 c 是否属于集合里面的元素
        if([charSet characterIsMember:c]) {
            sum ++;
        }
    }
    return sum;
}

@end
