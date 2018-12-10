//
//  LQTContentTableViewController.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/5.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTContentTableViewController.h"
#import <MJRefresh/MJRefresh.h>

@interface LQTContentTableViewController ()

@end

@implementation LQTContentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self.tableView.mj_header endRefreshing];
        });
    }];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    cell.textLabel.text = [NSString stringWithFormat:@"index is %ld",(long)indexPath.row];
    
    return cell;
}

@end
