//
//  CustomTabBar.h
//  CustomTabBarController
//
//  Created by huangjiawang on 2020/8/21.
//  Copyright © 2020 jiawang. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger, CustomTabBarCenterButtonPosition){
    CustomTabBarPositionNormal, // 正常
    CustomTabBarPositionProtruding // 凸出
};

NS_ASSUME_NONNULL_BEGIN

@interface CustomTabBar : UITabBar
@property (nonatomic, strong) UIButton *customBtn;
@property (nonatomic, strong) UIImage *btnNormalImage;
@property (nonatomic, strong) UIImage *btnSelectedImage;
@property (nonatomic, assign) CustomTabBarCenterButtonPosition position;

/**
  中间按钮的宽和高 计算frame用
*/
@property (nonatomic, assign) CGFloat btnWidth;
@property (nonatomic, assign) CGFloat btnHeight;
@end

NS_ASSUME_NONNULL_END
