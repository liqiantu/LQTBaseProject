//
//  LQTCategoryModel.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/11.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTCategoryModel.h"

@implementation LQTCategoryModel

+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass {
    return @{
             @"content" : [LQTContentModel class]
             };
}

+ (void)todayRequest {
    [LQTRequestCenter sendGetRequest:^(XMRequest *request) {
        request.api = @"api/today";
    } onSuccess:^(id responseObject) {
        
    } onFailure:^(NSError *error) {
        
    }];
}

@end
