//
//  LQTRequestCenter.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/10.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTRequestCenter.h"

@implementation LQTRequestCenter

+ (void)congfigCenter {
    
    [XMCenter setupConfig:^(XMConfig *config) {
        config.generalServer = @"http://gank.io/";
        config.generalHeaders = @{};
        config.generalParameters = @{};
        config.generalUserInfo = nil;
        config.callbackQueue = dispatch_get_main_queue();
        config.engine = [XMEngine sharedEngine];
#ifdef DEBUG
        config.consoleLog = YES;
#endif
    }];
    
    [XMCenter setRequestProcessBlock:^(XMRequest * _Nonnull request) {
        
    }];
    
    [XMCenter setResponseProcessBlock:^id(XMRequest * _Nonnull request, id  _Nullable responseObject, NSError *__autoreleasing  _Nullable * _Nullable error) {
        
        return nil;
    }];
}

+ (void)sendGetRequest:(requestBlock)requestBlk onSuccess:(successBlock)successBlk onFailure:(failureBlock)failureBlk{
    [XMCenter sendRequest:^(XMRequest *request) {
//        request.url = @"http://example.com/v1/foo/bar";
        request.httpMethod = kXMHTTPMethodGET;
        request.requestSerializerType = kXMRequestSerializerJSON;
        request.responseSerializerType = kXMResponseSerializerJSON;
        requestBlk(request);
    } onSuccess:^(id responseObject) {
        
        successBlk(responseObject);
    } onFailure:^(NSError *error) {
        
        failureBlk(error);
    }];
}


@end
