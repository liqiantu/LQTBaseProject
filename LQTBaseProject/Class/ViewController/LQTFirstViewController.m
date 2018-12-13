//
//  LQTFirstViewController.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/4.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTFirstViewController.h"
#import "LQTContentTableViewController.h"
#import <JXCategoryView.h>
#import "UIWindow+JXSafeArea.h"

#import "LQTHomeModel.h"

#define WindowsSize [UIScreen mainScreen].bounds.size

@interface LQTFirstViewController () <JXCategoryViewDelegate>

@property (nonatomic, strong) JXCategoryTitleView *categoryView;
@property (nonatomic, strong) NSMutableArray <LQTContentTableViewController *> *listVCArray;
@property (nonatomic, strong) JXCategoryListVCContainerView *listVCContainerView;

@property (nonatomic, strong) LQTHomeModel *homeModel;
@end


@implementation LQTFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;

    [LQTHomeModel todayRequestOnSuccess:^(LQTHomeModel * _Nonnull homeModel) {
        self.homeModel = homeModel;
        [self configUI];
    }];
}

- (void)configUI {
    self.title = @"first";
    
    CGFloat naviHeight = [UIApplication.sharedApplication.keyWindow jx_navigationHeight];
    
    NSArray *titles = self.homeModel.category;
    NSUInteger count = titles.count;
    CGFloat categoryViewHeight = 50;
    CGFloat width = WindowsSize.width;
    CGFloat height = WindowsSize.height - naviHeight - categoryViewHeight - 49;
    
    self.listVCArray = [NSMutableArray array];
    for (int i = 0; i < count; i ++) {
        LQTContentTableViewController *listVC = [[LQTContentTableViewController alloc] initWithStyle:UITableViewStylePlain];
        
        switch (i) {
            case 0:
                listVC.contentModels = self.homeModel.android;
                break;
            case 1:
                listVC.contentModels = self.homeModel.webFront;
                break;
            case 2:
                listVC.contentModels = self.homeModel.app;
                break;
            case 3:
                listVC.contentModels = self.homeModel.extendSource;
                break;
            case 4:
                listVC.contentModels = self.homeModel.ios;
                break;
            case 5:
                listVC.contentModels = self.homeModel.video;
                break;
            case 6:
                listVC.contentModels = self.homeModel.fuli;
                break;
                
            default:
                break;
        }
        
        listVC.view.frame = CGRectMake(i*width, 0, width, height);
        [self.listVCArray addObject:listVC];
    }
    
    self.categoryView = [[JXCategoryTitleView alloc] init];
    self.categoryView.frame = CGRectMake(0, 0, WindowsSize.width, categoryViewHeight);
    self.categoryView.delegate = self;
    self.categoryView.titles = titles;
    JXCategoryIndicatorLineView *lineView = [[JXCategoryIndicatorLineView alloc] init];
    self.categoryView.indicators = @[lineView];
    [self.view addSubview:self.categoryView];
    
    self.listVCContainerView = [[JXCategoryListVCContainerView alloc] initWithFrame:CGRectMake(0, categoryViewHeight, width, height)];
    self.listVCContainerView.defaultSelectedIndex = 0;
    self.categoryView.defaultSelectedIndex = 0;
    self.listVCContainerView.listVCArray = self.listVCArray;
    [self.view addSubview:self.listVCContainerView];
    
    self.categoryView.contentScrollView = self.listVCContainerView.scrollView;
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.listVCContainerView parentVCWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
//    self.navigationController.interactivePopGestureRecognizer.enabled = (self.categoryView.selectedIndex == 0);
    
    [self.listVCContainerView parentVCDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [self.listVCContainerView parentVCWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    [self.listVCContainerView parentVCDidDisappear:animated];
}

//这句代码必须加上
- (BOOL)shouldAutomaticallyForwardAppearanceMethods {
    return NO;
}

#pragma mark - JXCategoryViewDelegate

- (void)categoryView:(JXCategoryBaseView *)categoryView didSelectedItemAtIndex:(NSInteger)index {
    //侧滑手势处理
    self.navigationController.interactivePopGestureRecognizer.enabled = (index == 0);
}

- (void)categoryView:(JXCategoryBaseView *)categoryView didClickSelectedItemAtIndex:(NSInteger)index {
    [self.listVCContainerView didClickSelectedItemAtIndex:index];
}

- (void)categoryView:(JXCategoryBaseView *)categoryView didScrollSelectedItemAtIndex:(NSInteger)index {
    [self.listVCContainerView didScrollSelectedItemAtIndex:index];
}

- (void)categoryView:(JXCategoryBaseView *)categoryView scrollingFromLeftIndex:(NSInteger)leftIndex toRightIndex:(NSInteger)rightIndex ratio:(CGFloat)ratio {
    [self.listVCContainerView scrollingFromLeftIndex:leftIndex toRightIndex:rightIndex ratio:ratio];
}

#pragma mark - private method

///**
// 重载数据源：比如从服务器获取新的数据、否则用户对分类进行了排序等
// */
//- (void)reloadData {
//    NSArray *titles = [self getRandomTitles];
//    //先把之前的listView移除掉
//    for (UIViewController *vc in self.listVCArray) {
//        [vc.view removeFromSuperview];
//    }
//    [self.listVCArray removeAllObjects];
//
//
//    CGFloat naviHeight = [UIApplication.sharedApplication.keyWindow jx_navigationHeight];
//    CGFloat categoryViewHeight = 50;
//    CGFloat width = WindowsSize.width;
//    CGFloat height = WindowsSize.height - naviHeight - categoryViewHeight;
//
//    for (int i = 0; i < titles.count; i ++) {
//        LQTContentTableViewController *listVC = [[LQTContentTableViewController alloc] initWithStyle:UITableViewStylePlain];
//        listVC.view.frame = CGRectMake(i*width, 0, width, height);
//        [self.listVCArray addObject:listVC];
//    }
//
//    self.listVCContainerView.listVCArray = self.listVCArray;
//    self.listVCContainerView.defaultSelectedIndex = 0;
//    [self.listVCContainerView reloadData];
//
//    //重载之后默认回到0，你也可以指定一个index
//    self.categoryView.defaultSelectedIndex = 0;
//    self.categoryView.titles = titles;
//    [self.categoryView reloadData];
//}

@end
