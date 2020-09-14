//
//  BNRLogger.h
//  targetAction
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRLogger : NSObject

// 定义一个 NSDate 属性，用于更新时间
@property (nonatomic) NSDate *lastTime;

// 返回 NSString 指针的方法
- (NSString *)lastTimeString;

// 更新时间的方法
- (void)updateLastTime:(NSTimer *)t;

@end

NS_ASSUME_NONNULL_END

