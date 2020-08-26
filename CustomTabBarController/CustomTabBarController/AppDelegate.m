//
//  AppDelegate.m
//  CustomTabBarController
//
//  Created by huangjiawang on 2020/8/21.
//  Copyright © 2020 jiawang. All rights reserved.
//

#import "AppDelegate.h"
#import "RootTabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    // Override point for customization after application launch.
    RootTabBarController *root = [[RootTabBarController alloc] init];
    root.isNormal = NO;//可根据需要自由切换
    self.window.rootViewController = root;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
