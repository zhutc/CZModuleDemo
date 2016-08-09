//
//  CZRouter.h
//  ModuleA
//
//  Created by tczhu on 16/8/9.
//  Copyright © 2016年 tczhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZRouter : NSObject
+(void)registerRouter;

+(id)doTaskWithIdentifier:(NSString*)identifier // ModuleName/FunctionName
                paramters:(id)param, ... NS_REQUIRES_NIL_TERMINATION;

+(id)doAsyncTaskWithIdentifier:(NSString*)identifier
                          done:(void(^)(id ob , NSError* error))doneBlock
                     paramters:(id)param, ... NS_REQUIRES_NIL_TERMINATION;
@end
