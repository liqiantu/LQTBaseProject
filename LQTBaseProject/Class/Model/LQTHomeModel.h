//
//  LQTHomeModel.h
//  LQTBaseProject
//
//  Created by 李前途 on 2018/12/12.
//  Copyright © 2018 MyDemo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYModel.h>

#import "LQTContentModel.h"
#import "LQTRequestCenter.h"

@class LQTHomeModel;

NS_ASSUME_NONNULL_BEGIN

typedef void(^todayRequestSuccessBlock)(LQTHomeModel *homeModel);

@interface LQTHomeModel : NSObject <YYModel>

@property (nonatomic,strong) NSArray <NSString *> *category;

@property (nonatomic,strong) NSArray <LQTContentModel *> *android;
@property (nonatomic,strong) NSArray <LQTContentModel *> *recommend;
@property (nonatomic,strong) NSArray <LQTContentModel *> *app;
@property (nonatomic,strong) NSArray <LQTContentModel *> *extendSource;
@property (nonatomic,strong) NSArray <LQTContentModel *> *ios;
@property (nonatomic,strong) NSArray <LQTContentModel *> *video;
@property (nonatomic,strong) NSArray <LQTContentModel *> *fuli;

+ (void)todayRequestOnSuccess:(todayRequestSuccessBlock)todayRequestBlk;

@end

NS_ASSUME_NONNULL_END
