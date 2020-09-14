//
//  BNRObserver.m
//  KVO
//
//  Created by deng on 2020/5/28.
//  Copyright © 2020 Big Nerd Ranch. All rights reserved.
//

#import "BNRObserver.h"

@implementation BNRObserver

// 添加观察方法
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSString *oldValue = [change objectForKey:NSKeyValueChangeOldKey];
    NSString *newValue = [change objectForKey:NSKeyValueChangeNewKey];
    NSLog(@"Observed: %@ of %@ was changed from %@ to %@", keyPath, object, oldValue, newValue);
}

@end
