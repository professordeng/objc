//
//  main.m
//  writeToFile
//
//  Created by deng on 2020/5/30.
//  Copyright © 2020 professordeng. All rights reserved.
//

// 写文件 : 可在 /tmp 中使用 open 命令打开生成的文件

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"professordeng is cool\n"];
        }
        
        // 声明一个指向 NSError 对象的指针，但是不创建相应的对象
        // 实际上，只有当发生错误时，才会由 writeToFile 创建相应的 NSError 对象
        NSError *error;
        
        // 将 NSError 指针通过引用传入 writeToFile:atomically:encoding:error 方法
        BOOL success = [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        
        // 检查返回的布尔值，如果写入文件失败，就查询 NSError 对象并输出错误描述
        if(success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
    }
    return 0;
}
