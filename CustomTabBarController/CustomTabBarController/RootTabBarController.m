//
//  RootTabBarController.m
//  CustomTabBarController
//
//  Created by huangjiawang on 2020/8/21.
//  Copyright © 2020 jiawang. All rights reserved.
//

#import "RootTabBarController.h"
#import "ViewController.h"
@interface RootTabBarController ()<UITabBarControllerDelegate>{
    UINavigationController *nvc1;
    UINavigationController *nvc2;
    UINavigationController *nvc3;
}
@end

@implementation RootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.customTabbar.translucent = NO;
    self.customTabbar.btnNormalImage = [UIImage imageNamed:@"add"];
    self.customTabbar.btnSelectedImage = [UIImage imageNamed:@"add"];
    
    if (!nvc1) {
      ViewController *ss = [[ViewController alloc] init];
      ss.view.backgroundColor = [UIColor redColor];
      ss.hidesBottomBarWhenPushed = NO;
      ss.title = @"首页";
      nvc1 = [[UINavigationController alloc]initWithRootViewController:ss];
      nvc1.tabBarItem.title = @"首页";
      [nvc1.tabBarItem setImage:[[UIImage imageNamed:@"tab_me_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
      [nvc1.tabBarItem setSelectedImage:[[UIImage imageNamed:@"tab_me_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    }
    
    if (!nvc3) {
      ViewController *ss = [[ViewController alloc] init];
      ss.view.backgroundColor = [UIColor yellowColor];
      ss.hidesBottomBarWhenPushed = NO;
      ss.title = @"我的";
      nvc3 = [[UINavigationController alloc]initWithRootViewController:ss];
      nvc3.tabBarItem.title = @"我的";
      [nvc3.tabBarItem setImage:[[UIImage imageNamed:@"tab_me_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
      [nvc3.tabBarItem setSelectedImage:[[UIImage imageNamed:@"tab_me_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    }
    self.customTabbar.translucent = NO;
    [self tabBarTextColorWithTabBar:self.customTabbar];
    
    // Do any additional setup after loading the view.
}
-(void)setIsNormal:(BOOL)isNormal{
    if(isNormal){
           self.customTabbar.position = CustomTabBarPositionNormal;
           if (!nvc2) {
             ViewController *ss = [[ViewController alloc] init];
             ss.view.backgroundColor = [UIColor greenColor];
             ss.title = @"";
             ss.hidesBottomBarWhenPushed = NO;
             nvc2 = [[UINavigationController alloc]initWithRootViewController:ss];
             nvc2.tabBarItem.title = @"";
           }
       }else{
           self.customTabbar.position = CustomTabBarPositionProtruding;
           if (!nvc2) {
             ViewController *ss = [[ViewController alloc] init];
             ss.view.backgroundColor = [UIColor greenColor];
             ss.title = @"发现";
             ss.hidesBottomBarWhenPushed = NO;
             nvc2 = [[UINavigationController alloc]initWithRootViewController:ss];
             nvc2.tabBarItem.title = @"发现";
           }
       }
    NSArray *tabBarControllers;
    tabBarControllers = @[nvc1,nvc2,nvc3];
    self.viewControllers = tabBarControllers;
}
-(void)tabBarTextColorWithTabBar:(UITabBar *)tabBar{
    if (@available(iOS 13.0, *)) {
            UITabBarAppearance *appearance = UITabBarAppearance.new;
            NSMutableParagraphStyle *par = [[NSMutableParagraphStyle alloc]init];
            par.alignment = NSTextAlignmentCenter;
            UITabBarItemStateAppearance *normal = appearance.stackedLayoutAppearance.normal;
            if (normal) {
                normal.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor blackColor],NSParagraphStyleAttributeName : par};
            }
            UITabBarItemStateAppearance *selected = appearance.stackedLayoutAppearance.selected;
            if (selected) {
                selected.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor blackColor],NSParagraphStyleAttributeName : par};
            }
            self.tabBar.standardAppearance = appearance;
    }else{
        for (UITabBarItem *tabBarItem in tabBar.items) {
            
            [tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],NSForegroundColorAttributeName, nil]forState:UIControlStateSelected];
            [tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],NSForegroundColorAttributeName, nil]forState:UIControlStateNormal];
        }
    }
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
