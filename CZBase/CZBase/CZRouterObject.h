//
//  CZRouterObject.h
//  ModuleA
//
//  Created by tczhu on 16/8/9.
//  Copyright © 2016年 tczhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZRouterObject : NSObject
-(id)doTaskWithIdentifier:(NSString*)identifier
                paramters:(id)param;

-(id)doAsyncTaskWithIdentifier:(NSString*)identifier
                          done:(void(^)(id ob , NSError* error))doneBlock
                     paramters:(id)param;
@end
