//
//  LQTBaseNavigationViewController.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/5.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTBaseNavigationViewController.h"

@interface LQTBaseNavigationViewController ()

@end

@implementation LQTBaseNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.fd_viewControllerBasedNavigationBarAppearanceEnabled = NO;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 1) {
        [viewController setHidesBottomBarWhenPushed:YES];
    }
    
    [super pushViewController:viewController animated:animated];
}

@end
