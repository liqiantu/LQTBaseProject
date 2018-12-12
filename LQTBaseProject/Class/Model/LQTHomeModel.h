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

NS_ASSUME_NONNULL_BEGIN

@interface LQTHomeModel : NSObject <YYModel>

@property (nonatomic,strong) NSArray <NSString *> *category;

@property (nonatomic,strong) NSArray <LQTContentModel *> *android;
@property (nonatomic,strong) NSArray <LQTContentModel *> *webFront;
@property (nonatomic,strong) NSArray <LQTContentModel *> *app;
@property (nonatomic,strong) NSArray <LQTContentModel *> *extendSource;
@property (nonatomic,strong) NSArray <LQTContentModel *> *ios;
@property (nonatomic,strong) NSArray <LQTContentModel *> *video;
@property (nonatomic,strong) NSArray <LQTContentModel *> *fuli;



+ (void)todayRequest;

@end

NS_ASSUME_NONNULL_END
