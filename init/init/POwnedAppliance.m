//
//  POwnedAppliance.m
//  init
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import "POwnedAppliance.h"

@interface POwnedAppliance()

{
    NSMutableSet *_ownerNames;
}

@end

@implementation POwnedAppliance

// 指定初始方法（需要两个参数）
- (instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n
{
    // 调用父类的指定初始方法
    if (self = [super initWithProductName:pn]) {
        // 创建本类才有的实例变量
        _ownerNames = [[NSMutableSet alloc] init];
        
        // 赋值
        if (n) {
            [_ownerNames addObject:n];
        }
    }
    
    // 返回指向新对象的指针
    return self;
}

// 覆盖父类的指定初始方法
- (instancetype)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}

- (void)addOwnerName:(NSString *)n
{
    [_ownerNames addObject:n];
}

- (void)removeOwnerName:(NSString *)n
{
    [_ownerNames removeObject:n];
}

- (NSSet *)ownerNames
{
    return [_ownerNames copy];
}

@end
