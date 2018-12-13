//
//  LQTContentTableViewCell.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/13.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTContentTableViewCell.h"
#import <PYPhotoBrowser.h>

@interface LQTContentTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *descLb;
@property (weak, nonatomic) IBOutlet UIView *photoView;

@end

@implementation LQTContentTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.descLb.text = self.model.desc;
    
    if (!(self.model.images.count > 0)) {
        self.photoView.hidden = YES;
    }
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
