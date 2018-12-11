//
//  LQTHomeModel.h
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/11.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYModel.h>

NS_ASSUME_NONNULL_BEGIN

@interface LQTContentModel : NSObject

@property (nonatomic, copy) NSString* _id;
@property (nonatomic, copy) NSString* createdAt;
@property (nonatomic, copy) NSString* desc;
@property (nonatomic, strong) NSArray* images;
@property (nonatomic, copy) NSString* publishedAt;
@property (nonatomic, copy) NSString* source;
@property (nonatomic, copy) NSString* type;
@property (nonatomic, copy) NSString* url;
@property (nonatomic, copy) NSString* used;
@property (nonatomic, copy) NSString* who;

@end

NS_ASSUME_NONNULL_END
