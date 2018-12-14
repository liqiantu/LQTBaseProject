//
//  LQTContentTableViewController.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/5.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTContentTableViewController.h"
#import <MJRefresh/MJRefresh.h>
#import <UITableView+FDTemplateLayoutCell/UITableView+FDTemplateLayoutCell.h>

#import "LQTContentTableViewCell.h"


@interface LQTContentTableViewController ()

@end

@implementation LQTContentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.allowsSelection = NO;
    self.tableView.estimatedRowHeight = 60;
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([LQTContentTableViewCell class]) bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"cell"];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSLog(@"LQTContentTableViewController appear");
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contentModels.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LQTContentModel *model = (LQTContentModel *)self.contentModels[indexPath.row];
    LQTContentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.model = model;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [tableView fd_heightForCellWithIdentifier:@"cell" configuration:^(id cell) {
        // Configure this cell with data, same as what you've done in "-tableView:cellForRowAtIndexPath:"
        // Like:
        //    cell.entity = self.feedEntities[indexPath.row];
        
        LQTContentTableViewCell *myCell = (LQTContentTableViewCell *)cell;
        myCell.model = (LQTContentModel *)self.contentModels[indexPath.row];
    }];
}

@end
