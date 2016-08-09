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
    return YES;
}
@end
