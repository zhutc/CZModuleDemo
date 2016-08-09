//
//  CZModuleDemoTests.m
//  CZModuleDemoTests
//
//  Created by tczhu on 16/8/9.
//  Copyright © 2016年 tczhu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CZRouter.h"
@interface CZModuleDemoTests : XCTestCase

@end

@implementation CZModuleDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testRouterParam {
    [CZRouter doTaskWithIdentifier:@"A/testparam" paramters: nil];
    [CZRouter doTaskWithIdentifier:@"A/testparam" paramters:@"1",@2,[NSObject new], nil];
}

@end
