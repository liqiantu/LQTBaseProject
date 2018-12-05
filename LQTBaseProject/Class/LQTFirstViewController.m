//
//  LQTFirstViewController.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/4.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#if DEBUG
#import "FLEXManager.h"
#endif

#import "LQTFirstViewController.h"
#import "LQTContentTableViewController.h"
#import <JXCategoryView.h>

#define WindowsSize [UIScreen mainScreen].bounds.size

@interface LQTFirstViewController () <JXCategoryViewDelegate>

@property (nonatomic, strong) JXCategoryTitleView *categoryView;
@property (nonatomic, strong) NSMutableArray <LQTContentTableViewController *> *listVCArray;
@property (nonatomic, strong) JXCategoryListVCContainerView *listVCContainerView;

@end

// TODO: http://gank.io/api/today

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

#pragma mark - private method

- (void)

@end
