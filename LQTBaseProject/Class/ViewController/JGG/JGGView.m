
//
//  JGGView.m
//  demoProject
//
//  Created by liqiantu on 2018/12/25.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "JGGView.h"
#import <UIImageView+WebCache.h>

@interface JGGView ()

@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation JGGView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        CGFloat jgg_width = kScreenWidth-2*kGAP-50;
        
        CGFloat imageWidth =  (jgg_width-2*kGAP)/3;
        CGFloat imageHeight =  imageWidth;
        
        for (int i = 0; i < self.dataSource.count; i++) {
            UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(0+(imageWidth+kGAP)*(i%3),floorf(i/3.0)*(imageHeight+kGAP),imageWidth, imageHeight)];
            [iv sd_setImageWithURL:[NSURL URLWithString:self.dataSource[i]]];
            [self addSubview:iv];
        }
    }
    return self;
}

- (NSMutableArray *)dataSource {
    if (_dataSource == nil) {
        _dataSource = [NSMutableArray array];
        for (int i = 0; i < 9; i++) {
            [_dataSource addObject:@"http://pic1.nipic.com/2008-12-30/200812308231244_2.jpg"];
        }
    }
    
    return _dataSource;
}


@end
