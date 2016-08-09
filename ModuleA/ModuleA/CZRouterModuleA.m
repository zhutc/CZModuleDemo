//
//  CZRouterModuleA.m
//  ModuleA
//
//  Created by tczhu on 16/8/9.
//  Copyright © 2016年 tczhu. All rights reserved.
//

#import "CZRouterModuleA.h"
#import <UIKit/UIKit.h>
#import "ModuleViewControllerA.h"
@implementation CZRouterModuleA
-(id)doAsyncTaskWithIdentifier:(NSString *)identifier done:(void (^)(id, NSError *))doneBlock paramters:(id)param
{
    return nil;
}

-(id)doTaskWithIdentifier:(NSString *)identifier paramters:(id)param
{
    id result = nil;
    if ([identifier isEqualToString:@"A/rootTabbarViewController"]) {
        UITabBarController* tabVC = [[UITabBarController alloc] init];
        return tabVC;
    }else if ([identifier isEqualToString:@"A/MainVC"])
    {
        ModuleViewControllerA* vc = [[ModuleViewControllerA alloc] initWithNibName:@"ModuleViewControllerA" bundle:nil];
        vc.title = @"A";
        return vc;
    }
    return result;
}

@end
