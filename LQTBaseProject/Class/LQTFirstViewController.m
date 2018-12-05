//
//  LQTFirstViewController.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/4.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTFirstViewController.h"

@interface LQTFirstViewController ()

@end

@implementation LQTFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"first";
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    
    NSLog(@"viewWillAppear");
}

@end
