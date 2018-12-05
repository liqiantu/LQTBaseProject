//
//  LQTFirstViewController.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/4.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTFirstViewController.h"

#if DEBUG
#import "FLEXManager.h"
#endif


@interface LQTFirstViewController ()

@end

@implementation LQTFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"first";
    
#if DEBUG
    [[FLEXManager sharedManager] showExplorer];
#endif
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    
    NSLog(@"viewWillAppear");
}

@end
