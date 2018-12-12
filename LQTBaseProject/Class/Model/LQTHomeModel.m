//
//  LQTHomeModel.m
//  LQTBaseProject
//
//  Created by 李前途 on 2018/12/12.
//  Copyright © 2018 MyDemo. All rights reserved.
//

#import "LQTHomeModel.h"

@implementation LQTHomeModel

+ (void)todayRequest {
    [LQTRequestCenter sendGetRequest:^(XMRequest *request) {
        request.api = @"api/today";
    } onSuccess:^(id responseObject) {
        NSDictionary *resDic = (NSDictionary *)responseObject;
        
        LQTHomeModel *model = [LQTHomeModel yy_modelWithDictionary:resDic];
        
        NSLog(@"%@",model);
        
        
    } onFailure:^(NSError *error) {
        
    }];
}

+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass {
    return @{
             @"android": [LQTContentModel class],
             @"webFront":  [LQTContentModel class]
             };
}

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper {
    return @{
             @"android": @"results.Android",
             @"webFront": @"results.前端"
             };
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ %@",self.category[0],self.android[0]];
}

@end
