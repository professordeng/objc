//
//  PPerson.h
//  class
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PPerson : NSObject

// 属性，若没有手动设置存取方法，系统会自动生成
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

// 类方法的表示，float 是返回值
- (float)bodyMassIndex;

@end

NS_ASSUME_NONNULL_END


// - 实例变量以 _ 开头，然后是驼峰命名法
// - 取方法名字和实例变量对应，但不需要 _
// - 存方法 set + 命名，注意要驼峰命名法
