// objc 没有命名空间，为了防止命名冲突，类的前面需要加上唯一的标识
// NS 是苹果公司的 NextStep 缩写，WK 是 WebKit 的缩写，本人网名为 professordeng，因此用 P
// 子类可以覆盖父类的方法，例如 Pemployee 的 bodyMassIndex 方法

#import <Foundation/Foundation.h>
#import "PPerson.h"

NS_ASSUME_NONNULL_BEGIN

@interface PEmployee : PPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
- (double)yearOfEmployment;
- (float)bodyMassIndex;

@end

NS_ASSUME_NONNULL_END
