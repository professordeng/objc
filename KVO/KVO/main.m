// key-value observing

#import <Foundation/Foundation.h>
#import "BNRObserver.h"
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRLogger *logger = [[BNRLogger alloc] init];
        
        // 将计时器的目标设置为 logger，目标相应方法为 updateLastTime
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
        
        __unused BNRObserver *observer = [[BNRObserver alloc] init];
        
        // 无论 lastTime 何时发生变化，都要告诉 observer 新值以及改变之前的旧值
        // observer 是观察对象，lastTime 时被观察的变量
        // 如果不使用存取方法而直接修改 _lastTime，observer 观察不到变化
        [logger addObserver:observer forKeyPath:@"lastTime" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
