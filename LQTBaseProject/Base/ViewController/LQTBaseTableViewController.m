//
//  LQTBaseTableViewController.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/5.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTBaseTableViewController.h"

@interface LQTBaseTableViewController ()

@end

@implementation LQTBaseTableViewController

// TODO: 添加MJRefresh 封装

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (@available(iOS 11.0, *)) {
        self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;//UIScrollView也适用
    }else {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
}

#pragma mark - Table view data source

@end
