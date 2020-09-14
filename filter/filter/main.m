//
//  main.m
//  sort
//
//  Created by deng on 2020/5/30.
//  Copyright © 2020 professordeng. All rights reserved.
//

// NSSet 和 NSDictionary 数组是无序的，所以需要对它们进行排序

#import <Foundation/Foundation.h>
#import "PPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PPerson *p1 = [[PPerson alloc] initWithName:@"David" andID:[NSNumber numberWithInt:120]];
        PPerson *p2 = [[PPerson alloc] initWithName:@"James" andID:[NSNumber numberWithInt:110]];
        PPerson *p3 = [[PPerson alloc] initWithName:@"Blue" andID:[NSNumber numberWithInt:130]];
        
        NSMutableArray *ps = [[NSMutableArray alloc] init];
        [ps addObject:p1];
        [ps addObject:p2];
        [ps addObject:p3];
        
        // 设置过滤条件，ID > 120 才会被留下来
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"ID >= 120"];
        
        NSArray *afterFilter = [ps filteredArrayUsingPredicate:predicate];
        NSLog(@"afterFilter: %@", afterFilter);
    }
    return 0;
}
