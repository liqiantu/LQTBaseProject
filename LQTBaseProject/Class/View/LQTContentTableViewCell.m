//
//  LQTContentTableViewCell.m
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/13.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import "LQTContentTableViewCell.h"
#import "LQTImageCollectionView.h"
#import <Masonry/Masonry.h>
#define kMaxImageCount 9

@interface LQTContentTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *descLb;
@property (weak, nonatomic) IBOutlet UILabel *dateLb;
@property (weak, nonatomic) IBOutlet UIView *imgContentView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imgContentViewH;
@property (weak, nonatomic) IBOutlet UILabel *authorLb;

@property (nonatomic, strong) NSMutableArray<UIImageView *> *imgViewArr;
@property (nonatomic, strong) LQTImageCollectionView *collectionView;

@end

@implementation LQTContentTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.imgViewArr = [NSMutableArray array];
    
}

- (void)setModel:(LQTContentModel *)model {
    if (model) {
        _model = model;
        _descLb.text = _model.desc;
        _dateLb.text = _model.publishedAt;
        
        NSInteger count = _model.images.count;
        if (count > 0) {
            if (count <= 3) {
                self.imgContentViewH.constant = (self.imgContentView.frame.size.width - 40) / 3 + 20;
            }else if (count <= 6) {
                self.imgContentViewH.constant = (self.imgContentView.frame.size.width - 40) / 3 * 2 + 30;
            }else if (count <= 9) {
                self.imgContentViewH.constant = (self.imgContentView.frame.size.width - 40) / 3 * 3 + 40;
            }
        }else {
            self.imgContentViewH.constant = 0;
        }
        
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.itemSize = CGSizeMake((self.imgContentView.frame.size.width - 40) / 3, (self.imgContentView.frame.size.width - 40) / 3);
        layout.minimumLineSpacing = 10.0; // 竖
        layout.minimumInteritemSpacing = 0.0; // 横
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
        
        
        LQTImageCollectionView *nineView = [[LQTImageCollectionView alloc] initWithFrame:self.imgContentView.frame collectionViewLayout:layout withImage:self.model.images];
        [self.imgContentView addSubview:nineView];
        
        [nineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.left.right.mas_equalTo(self.imgContentView);
        }];
        
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
