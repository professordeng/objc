//
//  BNRPerson.m
//  KVC
//
//  Created by deng on 2020/5/28.
//  Copyright © 2020 Big Nerd Ranch. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", self.name];
}

@end
