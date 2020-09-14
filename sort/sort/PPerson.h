//
//  PPerson.h
//  sort
//
//  Created by deng on 2020/5/30.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PPerson : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSNumber *ID;

// 新的初始方法需要声明
- (instancetype)initWithName:(NSString *)name andID:(NSNumber *)ID;

@end

NS_ASSUME_NONNULL_END
