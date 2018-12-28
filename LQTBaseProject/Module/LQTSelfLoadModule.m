//
//  LQTSelfLoadModule.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/21.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTSelfLoadModule.h"
#import <UIKit/UIKit.h>

//解释：
//+ load方法在足够早的时间点被调用
//block 版本的通知注册会产生一个__NSObserver *对象用来给外部 remove 观察者
//block 对 observer 对象的捕获早于函数的返回，所以若不加__block，会捕获到 nil
//在 block 执行结束时移除 observer，无需其他清理工作
//这样，在模块内部就完成了在程序启动点代码的挂载
//值得注意的是，通知是在- application:didFinishLaunchingWithOptions:调用完成后才发送的。
//顺便提下给 AppDelegate 瘦身的建议：AppDelegate 作为程序级状态变化的 delegate，应该只做路由和分发的作用，具体逻辑实现代码还是应该在分别的模块中，这个文件应该保持整洁，除了<UIApplicationDelegate>的方法外不应该出现其他方法。

//AOP编程以及Aspect库
//Aspect库是对面向切面编程(Aspect Oriented Programming)的实现，里面封装了Runtime的方法，也封装了上文的Method Swizzling方法。因此我们也可以看到，Method Swizzling也是AOP编程的一种。Aspect的用途很广泛，这里不具体展开，想了解更多的可以看一下官方github的介绍，已经够详细了。

@implementation LQTSelfLoadModule

+ (void)load
{
    __block id observer =
    [[NSNotificationCenter defaultCenter]
     addObserverForName:UIApplicationDidFinishLaunchingNotification
     object:nil
     queue:nil
     usingBlock:^(NSNotification *note) {
         [LQTSelfLoadModule setup]; // Do whatever you want
         [[NSNotificationCenter defaultCenter] removeObserver:observer];
     }];
}

+ (void)setup {
    NSLog(@"-----------------> UIApplicationDidFinishLaunchingNotification LQTSelfLoadModule setup");
}

@end
