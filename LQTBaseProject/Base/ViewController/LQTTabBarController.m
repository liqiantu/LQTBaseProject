//
//  LQTTabBarController.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/4.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTTabBarController.h"
#import "LQTBaseNavigationViewController.h"

#import "LQTFirstViewController.h"
#import "LQTSecondViewController.h"


@interface LQTTabBarController ()

@end

@implementation LQTTabBarController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setUpTabBar];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)setUpTabBar {
    self.tabBarItemsAttributes = [self tabBarItemsAttributes];
    self.viewControllers = [self myViewControllers];
}

- (NSArray<UIViewController *> *)myViewControllers {
    LQTFirstViewController *firstViewController = [[LQTFirstViewController alloc] init];
    UINavigationController *firstNavigationController = [[UINavigationController alloc]
                                                   initWithRootViewController:firstViewController];
    
    LQTSecondViewController *secondViewController = [[LQTSecondViewController alloc] init];
    UINavigationController *secondNavigationController = [[UINavigationController alloc]
                                                    initWithRootViewController:secondViewController];
    
    return @[firstNavigationController,secondNavigationController];
}

- (NSArray<NSDictionary *> *)tabBarItemsAttributes {
    NSDictionary *dict1 = @{
                            CYLTabBarItemTitle : @"firstPage",
                            //                            CYLTabBarItemImage : @"home_normal",
                            //                            CYLTabBarItemSelectedImage : @"home_highlight",
                            };
    NSDictionary *dict2 = @{
                            CYLTabBarItemTitle : @"secondPage",
                            //                            CYLTabBarItemImage : @"mycity_normal",
                            //                            CYLTabBarItemSelectedImage : @"mycity_highlight",
                            };
    
    return @[ dict1, dict2 ];
}

@end
