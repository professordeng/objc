//
//  PAppliance.m
//  init
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import "PAppliance.h"

@implementation PAppliance

// instancetype 关键词会告诉编译器返回类型
// 指定初始化方法
- (instancetype)initWithProductName:(NSString *)pn
{
    // 调用 NSObject 的 init 方法
    self = [super init];
    
    // 父类初始化成功后，交给该方法继续处理
    if (self) {
        // 为 _profuctName 赋值，copy 复制的都是不可修改对象，可使用 mutableCopy 实现可修改对象
        _productName = [pn copy];
        
        // 为 _voltage 赋初始值
        _voltage = 120;
    }
    
    // 返回指向新对象的指针
    return self;
}

// 当父类和子类的指定初始方法不一样时，要覆盖父类的初始方法
- (instancetype)init
{
    return [self initWithProductName:@"Unknown"];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}

@end
