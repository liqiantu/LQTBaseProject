//
//  LQTContentTableViewController.h
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/5.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTBaseTableViewController.h"
#import "LQTContentModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface LQTContentTableViewController : LQTBaseTableViewController

@property (nonatomic, strong) NSArray<LQTContentModel *> *contentModels;

@end

NS_ASSUME_NONNULL_END
