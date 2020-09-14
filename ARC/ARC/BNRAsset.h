//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRAsset : NSObject

// copy : 深度拷贝
@property (nonatomic, copy) NSString *label;
@property (nonatomic) unsigned int resaleValue;

@end

NS_ASSUME_NONNULL_END
