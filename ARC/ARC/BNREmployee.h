//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

// @class 告诉编译器有这么一个文件，在 .m 文件中真正地引入
@class BNRAsset;

NS_ASSUME_NONNULL_BEGIN

@interface BNREmployee : BNRPerson
{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;

// 给其他类返回 NSArray，而实际上自身是 NSMutableArray
@property (nonatomic, copy) NSArray *assets;

- (double)yearsOfEmployment;

// - 创建 collection 对象的时机有两个 :
//   1. 初始化对象时
//   2. 使用 collection 对象时
// 设置默认值使用第 1 种，否则使用第 2 种
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end

NS_ASSUME_NONNULL_END
