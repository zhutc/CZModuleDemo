//
//  CZRouter.m
//  ModuleA
//
//  Created by tczhu on 16/8/9.
//  Copyright © 2016年 tczhu. All rights reserved.
//

#import "CZRouter.h"
#import "CZRouterObject.h"
@interface CZRouter ()
@property (nonatomic , strong) NSMutableDictionary* routerDictionary;
@end
@implementation CZRouter
- (instancetype)init
{
    if (self = [super init]) {
        self.routerDictionary = @{}.mutableCopy;
    }
    return self;
}

+(CZRouter*)shareRouter
{
    static CZRouter* router = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        router = [CZRouter new];
    });
    return router;
}
+(void)registerRouter
{
    CZRouter* router = [CZRouter shareRouter];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSArray* modules = @[@"A",@"B",@"C"];
        for (NSString* name in modules) {
            NSString* className = [@"CZRouterModule" stringByAppendingString:name];
            id routerObject = [[NSClassFromString(className) alloc] init];
            if (routerObject) {
                [router.routerDictionary setObject:routerObject forKey:name];
            }
        }
    });
}

+(CZRouterObject*)routerObjectWithIdentifier:(NSString*)identifier
{
    return nil;
}


+(id)doTaskWithIdentifier:(NSString*)identifier
                paramters:(id)param, ... NS_REQUIRES_NIL_TERMINATION
{
    va_list args;
    NSMutableArray* paramArray = [NSMutableArray array];
    id value = nil;
    if(param != nil){
        [paramArray addObject:param];
        va_start(args, param);
        while((value = va_arg(args, id))){
            if(value){
                [paramArray addObject:value];
            }
        }
    }
    va_end(args);
    CZRouterObject* ob = [[self class] routerObjectWithIdentifier:identifier];
    id result = [ob doTaskWithIdentifier:identifier paramters:paramArray];
    return result;
}

+(id)doAsyncTaskWithIdentifier:(NSString*)identifier
                          done:(void(^)(id ob , NSError* error))doneBlock
                     paramters:(id)param, ... NS_REQUIRES_NIL_TERMINATION
{
    va_list args;
    NSMutableArray* paramArray = [NSMutableArray array];
    id value = nil;
    if(param != nil){
        [paramArray addObject:param];
        va_start(args, param);
        while((value = va_arg(args, id))){
            if(value){
                [paramArray addObject:value];
            }
        }
    }
    va_end(args);
    CZRouterObject* ob = [[self class] routerObjectWithIdentifier:identifier];
    id result = [ob doAsyncTaskWithIdentifier:identifier
                                         done:doneBlock
                                    paramters:paramArray];
    return result;
}

@end
