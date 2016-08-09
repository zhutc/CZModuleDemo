//
//  CZModuleDemoTests.m
//  CZModuleDemoTests
//
//  Created by tczhu on 16/8/9.
//  Copyright © 2016年 tczhu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CZRouter.h"
#import <objc/message.h>
@interface CZModuleDemoTests : XCTestCase

@end

@implementation CZModuleDemoTests

- (void)setUp {
    [super setUp];
    [CZRouter registerRouter];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRouterObject {
    SEL sel = NSSelectorFromString(@"routerObjectWithIdentifier:");
    id ob = ((id(*)(Class ,SEL,NSString*))objc_msgSend)([CZRouter class],sel,@"A/呵呵");
    XCTAssertNotNil(ob,@"ModeluA has no router class");
}
- (void)testRouterParam {
    [CZRouter doTaskWithIdentifier:@"A/testparam" paramters: nil];
    [CZRouter doTaskWithIdentifier:@"A/testparam" paramters:@"1",@2,[NSObject new], nil];
}

@end
