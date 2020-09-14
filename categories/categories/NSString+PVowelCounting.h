//
//  NSString+PVowelCounting.h
//  categories
//
//  Created by deng on 2020/5/30.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 和类声明区别一下，这里是括号
@interface NSString (PVowelCounting)

- (int)bnr_vowelCount;

@end

NS_ASSUME_NONNULL_END
