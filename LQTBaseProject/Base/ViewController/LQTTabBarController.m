//
//  LQTTabBarController.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/4.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTTabBarController.h"

#import "LQTFirstViewController.h"
#import "LQTSecondViewController.h"


@interface LQTTabBarController ()

@end

@implementation LQTTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)setupViewControllers {
    LQTFirstViewController *firstViewController = [[LQTFirstViewController alloc] init];
    UIViewController *firstNavigationController = [[UINavigationController alloc]
                                                   initWithRootViewController:firstViewController];

    LQTSecondViewController *secondViewController = [[LQTSecondViewController alloc] init];
    UIViewController *secondNavigationController = [[UINavigationController alloc]
                                                    initWithRootViewController:secondViewController];


//    CYLTabBarController *tabBarController = [[CYLTabBarController alloc] init];
    [self customizeTabBarForController:self];

    [self setViewControllers:@[
                                           firstNavigationController,
                                           secondNavigationController,
                                           ]];
//    self.tabBarController = tabBarController;
}

/*
 *
 在`-setViewControllers:`之前设置TabBar的属性，
 *
 */
- (void)customizeTabBarForController:(CYLTabBarController *)tabBarController {
    
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
    
    NSArray *tabBarItemsAttributes = @[ dict1, dict2 ];
    self.tabBarItemsAttributes = tabBarItemsAttributes;
}


@end
