//
//  PPerson.m
//  sort
//
//  Created by deng on 2020/5/30.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import "PPerson.h"

@implementation PPerson

// 指定初始方法
// instance 是实例的意思
- (instancetype)initWithName:(NSString *)name andID:(NSNumber *)ID
{
    self = [super init];
    
    if(self) {
        self.name = [name copy];
        self.ID = ID;
    }
    return self;
}

- (instancetype)init
{
    return [self initWithName:@"Unknown" andID:[NSNumber numberWithInt:120]];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<name: %@, ID: %@>", self.name, self.ID];
}

@end
