//
//  LQTImageCollectionView.h
//  LQTBaseProject
//
//  Created by liqiantu on 2018/12/14.
//  Copyright © 2018年 MyDemo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LQTImageCollectionView : UICollectionView

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout withImage:(NSArray *)image;

@end

NS_ASSUME_NONNULL_END
