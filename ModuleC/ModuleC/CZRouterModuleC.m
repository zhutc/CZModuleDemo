//
//  CZRouterModuleC.m
//  ModuleC
//
//  Created by tczhu on 16/8/9.
//  Copyright © 2016年 tczhu. All rights reserved.
//

#import "CZRouterModuleC.h"
#import "ModuleViewControllerC.h"
@implementation CZRouterModuleC
-(id)doTaskWithIdentifier:(NSString *)identifier paramters:(id)param
{
    id result = nil;
    if ([identifier isEqualToString:@"C/MainVC"])
    {
        ModuleViewControllerC* vc = [[ModuleViewControllerC alloc] init];
        vc.view.backgroundColor = [UIColor redColor];
        vc.title = @"C";

        return vc;
    }
    return result;
}
@end
