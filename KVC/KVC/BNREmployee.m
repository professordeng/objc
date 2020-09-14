//
//  BNREmployee.m
//  KVC
//
//  Created by deng on 2020/5/28.
//  Copyright © 2020 Big Nerd Ranch. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (instancetype)init
{
    // 调用 NSObject 的 init 方法
    self = [super init];
    
    // 是否返回非 nil 的值？
    if (self) {
        self.emergencyContact = [[BNRPerson alloc] init];
    }
    return self;
}

@end
