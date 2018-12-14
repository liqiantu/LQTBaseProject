//
//  LQTHomeModel.m
//  LQTBaseProject
//
//  Created by 李前途 on 2018/12/12.
//  Copyright © 2018 MyDemo. All rights reserved.
//

#import "LQTHomeModel.h"


@implementation LQTHomeModel

+ (void)todayRequestOnSuccess:(todayRequestSuccessBlock)todayRequestBlk {
    [LQTRequestCenter sendGetRequest:^(XMRequest *request) {
        request.api = @"api/today";
    } onSuccess:^(id responseObject) {
        NSDictionary *resDic = (NSDictionary *)responseObject;
        LQTHomeModel *model = [LQTHomeModel yy_modelWithDictionary:resDic];
        todayRequestBlk(model);
    } onFailure:^(NSError *error) {
        
    }];
}

+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass {
    return @{
             @"android": [LQTContentModel class],
             @"recommend":  [LQTContentModel class],
             @"app":  [LQTContentModel class],
             @"extendSource":  [LQTContentModel class],
             @"ios":  [LQTContentModel class],
             @"video":  [LQTContentModel class],
             @"fuli":  [LQTContentModel class],

             };
}

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper {
    return @{
             @"android": @"results.Android",
             @"recommend": @"results.瞎推荐",
             @"app": @"results.App",
             @"extendSource": @"results.拓展资源",
             @"ios": @"results.iOS",
             @"video": @"results.休息视频",
             @"fuli": @"results.福利"
             };
}

- (NSString *)description { return [self yy_modelDescription]; }


@end
