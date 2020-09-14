// KVC (key-value coding) 只对对象有效

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNREmployee *e = [[BNREmployee alloc] init];
        
        // 利用 KVC 给 ID 赋值
        [e setValue:[NSNumber numberWithInt:240] forKey:@"ID"];
        NSLog(@"ID: %@", [e valueForKey:@"ID"]);
        
        // 利用 KVC 给 BNRPerson 属性中的 name 赋初值
        [e setValue:@"David" forKeyPath:@"emergencyContact.name"];
        NSLog(@"name: %@", [e valueForKeyPath:@"emergencyContact.name"]);
    }
    return 0;
}
