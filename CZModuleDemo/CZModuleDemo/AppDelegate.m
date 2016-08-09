//
//  AppDelegate.m
//  CZModuleDemo
//
//  Created by tczhu on 16/8/9.
//  Copyright © 2016年 tczhu. All rights reserved.
//

#import "AppDelegate.h"
#import "CZRouter.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [CZRouter registerRouter];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UITabBarController* mainVC = [CZRouter doTaskWithIdentifier:@"A/rootTabbarViewController" paramters:nil];
    UIViewController* aVC = [CZRouter doTaskWithIdentifier:@"A/MainVC" paramters:nil];
    UIViewController* bVC = [CZRouter doTaskWithIdentifier:@"B/MainVC" paramters:nil];
    UIViewController* cVC = [CZRouter doTaskWithIdentifier:@"C/MainVC" paramters:nil];
    
    [mainVC setViewControllers:@[aVC,bVC,cVC]];
    
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:mainVC];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}
@end
