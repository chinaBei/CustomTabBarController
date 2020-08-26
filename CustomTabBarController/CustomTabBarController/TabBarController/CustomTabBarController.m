//
//  CustomTabBarController.m
//  CustomTabBarController
//
//  Created by huangjiawang on 2020/8/21.
//  Copyright © 2020 jiawang. All rights reserved.
//

#import "CustomTabBarController.h"

@interface CustomTabBarController ()

@end

@implementation CustomTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    _customTabbar = [[CustomTabBar alloc] init];
    //利用KVC 将自己的tabbar赋给系统tabBar
    [self setValue:_customTabbar forKeyPath:@"tabBar"];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
