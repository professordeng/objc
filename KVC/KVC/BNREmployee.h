//
//  BNREmployee.h
//  KVC
//
//  Created by deng on 2020/5/28.
//  Copyright © 2020 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNREmployee : NSObject

@property (nonatomic) NSNumber *ID;
@property (nonatomic) BNRPerson *emergencyContact;

@end

NS_ASSUME_NONNULL_END
