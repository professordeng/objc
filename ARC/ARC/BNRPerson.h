// - 使用 property 关键词后，会自动生成相应的存取方法，属性特性包括原子性、读写权限等
// - 基本变量、一对一对象关系都推荐使用属性
// - 一对多的复杂关系需要自己定义存取方法

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject

// 属性
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

// BNRPerson 类拥有计算 Body Mass Index 的方法
- (float)bodyMassIndex;

@end

NS_ASSUME_NONNULL_END


// - 实例变量以 _ 开头，然后是驼峰命名法
// - 取方法名字和实例变量对应，但不需要 _
// - 存方法是 set + 命名，注意要驼峰命名法
