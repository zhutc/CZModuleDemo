//
//  CZRouterModuleB.m
//  ModuleB
//
//  Created by tczhu on 16/8/9.
//  Copyright © 2016年 tczhu. All rights reserved.
//

#import "CZRouterModuleB.h"
#import "ModuleViewControllerB.h"
@implementation CZRouterModuleB
-(id)doTaskWithIdentifier:(NSString *)identifier paramters:(id)param
{
    id result = nil;
    if ([identifier isEqualToString:@"B/MainVC"])
    {
        ModuleViewControllerB* vc = [[ModuleViewControllerB alloc] init];
        vc.view.backgroundColor = [UIColor orangeColor];
        vc.title = @"B";
        return vc;
    }
    return result;
}
@end
