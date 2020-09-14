//
//  POwnedAppliance.h
//  init
//
//  Created by deng on 2020/5/29.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAppliance.h"

NS_ASSUME_NONNULL_BEGIN

@interface POwnedAppliance : PAppliance

@property (readonly) NSSet *ownerNames;
- (instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n;
- (void)addOwnerName:(NSString *)n;
- (void)removeOwnerName:(NSString *)n;

@end

NS_ASSUME_NONNULL_END
