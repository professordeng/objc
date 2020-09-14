//
//  PAppliance.h
//  init
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PAppliance : NSObject

// copy 是不可变拷贝
@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;

// 指定初始方法
- (instancetype)initWithProductName:(NSString *)pn;

@end

NS_ASSUME_NONNULL_END
