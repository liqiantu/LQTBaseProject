//
//  LQTRequestCenter.h
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/10.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XMNetworking/XMNetworking.h>

typedef void(^requestBlock)(XMRequest *request);
typedef void(^successBlock)(id responseObject);
typedef void(^failureBlock)(NSError *error);

NS_ASSUME_NONNULL_BEGIN

@interface LQTRequestCenter : NSObject

+ (void)sendGetRequest:(requestBlock)requestBlk onSuccess:(successBlock)successBlk onFailure:(failureBlock)failureBlk;

@end

NS_ASSUME_NONNULL_END
