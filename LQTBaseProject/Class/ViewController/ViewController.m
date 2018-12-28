//
//  ViewController.m
//  demoProject
//
//  Created by liqiantu on 2018/12/18.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#import "JGGView.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        
    JGGView *j = [[JGGView alloc] initWithFrame:CGRectZero];
    [self.view addSubview:j];
    
    CGFloat jgg_width = kScreenWidth-2*kGAP-50;
    CGFloat image_width = (jgg_width-2*kGAP)/3;
    
    CGFloat jgg_height = image_width;
//    if (model.messageSmallPics.count==0) {
//        jgg_height = 0;
//    }else if (model.messageSmallPics.count<=3) {
//        jgg_height = image_width;
//    }else if (model.messageSmallPics.count>3&&model.messageSmallPics.count<=6){
//        jgg_height = 2*image_width+kGAP;
//    }else  if (model.messageSmallPics.count>6&&model.messageSmallPics.count<=9){
//        jgg_height = 3*image_width+2*kGAP;
//    }
    
    [j mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view).offset(100);
        make.centerX.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(jgg_width, jgg_height));
    }];
}

@end
