//
//  PLogger.m
//  notification
//
//  Created by deng on 2020/5/30.
//  Copyright © 2020 professordeng. All rights reserved.
//

#import "PLogger.h"

@implementation PLogger

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}

@end

