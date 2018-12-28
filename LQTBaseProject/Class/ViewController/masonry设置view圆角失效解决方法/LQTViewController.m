//
//  LQTViewController.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/28.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTViewController.h"
#import <Masonry.h>
@interface LQTViewController ()
@property (nonatomic, strong) UIButton *btn;
@end

@implementation LQTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn = btn;
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"title" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    __weak typeof(self) weakSelf = self;
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.view).offset(150);
        make.centerX.mas_equalTo(weakSelf.view);
        make.size.mas_equalTo(CGSizeMake(120, 44));
    }];
}

- (void)viewDidLayoutSubviews {
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:_btn.bounds byRoundingCorners:UIRectCornerTopRight cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.frame = _btn.bounds;
    shapeLayer.path = path.CGPath;
    
    _btn.layer.mask = shapeLayer;
}

/*
 使用Masonry ，view4个圆角随意设置
 https://www.jianshu.com/p/6a61b5fa5d16
*/

@end
