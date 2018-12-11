//
//  LQTCategoryModel.h
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/11.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYModel.h>

#import "LQTContentModel.h"
#import "LQTRequestCenter.h"

NS_ASSUME_NONNULL_BEGIN

@interface LQTCategoryModel : NSObject <YYModel>

@property (nonatomic, strong) NSArray *categorys;
@property (nonatomic, copy) NSString *category;
@property (nonatomic, strong) NSArray *content;

@end

NS_ASSUME_NONNULL_END
