//
//  LoginTest.m
//  BreastFeedingApplication
//
//  Created by Balasubramanian, Srinivas B on 12/17/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LoginViewController.h"
#import "SecondViewController.h"



@interface LoginTest : XCTestCase
{
@private
    LoginViewController *UIViewController;
    
}


@end

@implementation LoginTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.continueAfterFailure = NO;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testlogin {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    LoginViewController *login = [[LoginViewController alloc]init];
    login.username = (UITextField *)@"admin";
    login.pwd = (UITextField *)@"password";
    
    //    login.username = (UITextField *)@"ahmed";
    //    login.pwd = (UITextField *)@"password";
    
    //    login.username = (UITextField *)@"ashraf";
    //    login.pwd = (UITextField *)@"password";
    //
    //    login.username = (UITextField *)@"abhi";
    //    login.pwd = (UITextField *)@"password";
    
    XCTAssertTrue([login.username isEqual:@"admin"]);
    XCTAssertTrue([login.pwd isEqual:@"password"]);
    
    //    XCTAssertTrue([login.username isEqual:@"ahmed"]);
    //    XCTAssertTrue([login.pwd isEqual:@"password"]);
    //
    //    XCTAssertTrue([login.username isEqual:@"ashraf"]);
    //    XCTAssertTrue([login.pwd isEqual:@"password"]);
    //
    //    XCTAssertTrue([login.username isEqual:@"abhi"]);
    //    XCTAssertTrue([login.pwd isEqual:@"password"]);
    
    
}



- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
