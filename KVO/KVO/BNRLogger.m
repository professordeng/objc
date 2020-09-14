#import "BNRLogger.h"

@implementation BNRLogger


- (NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil; // 类变量，所有对象共用
    if (!dateFormatter) { // 未初始化
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

@end
