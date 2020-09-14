//
//  PPerson.m
//  class
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import "PPerson.h"

@implementation PPerson

- (float)bodyMassIndex
{
    // self 类似 C++ 的 this 指针
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
