//
//  CustomTabBar.m
//  CustomTabBarController
//
//  Created by huangjiawang on 2020/8/21.
//  Copyright © 2020 jiawang. All rights reserved.
//

#import "CustomTabBar.h"

@interface CustomTabBar()
@end
@implementation CustomTabBar

- (UIButton *)customBtn{
    if(_customBtn ==nil){
        _customBtn = [[UIButton alloc] init];
        _customBtn.adjustsImageWhenHighlighted = NO;
    }
    return _customBtn;
}
- (instancetype)init{
    if (self = [super init]){
        [self initView];
    }
    return self;
}
- (void)initView{
    [self addSubview:self.customBtn];
}
- (void)layoutSubviews {
    [super layoutSubviews];
    switch (self.position) {
        case CustomTabBarPositionNormal:
            _customBtn.frame = CGRectMake((kMainScreenWidth - _btnWidth)/2.0, (49 - _btnHeight)/2.0, _btnWidth, _btnHeight);
            break;
        case CustomTabBarPositionProtruding:
             _customBtn.frame = CGRectMake((kMainScreenWidth - _btnWidth)/2.0, -_btnHeight/2.0, _btnWidth, _btnHeight);
            break;
        default:
            break;
    }
}
-(void)setBtnNormalImage:(UIImage *)btnNormalImage{
    _btnWidth = btnNormalImage.size.width;
    _btnHeight = btnNormalImage.size.height;
    [_customBtn setImage:btnNormalImage forState:UIControlStateNormal];
}
-(void)setBtnSelectedImage:(UIImage *)btnSelectedImage{
    [_customBtn setImage:btnSelectedImage forState:UIControlStateSelected];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
