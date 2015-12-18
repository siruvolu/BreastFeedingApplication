//
//  Login.m
//  BreastFeedingApplication
//
//  Created by Balasubramanian, Srinivas B on 12/17/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface Login : XCTestCase

@end

@implementation Login

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *usernameTextField = app.textFields[@"Username"];
    [usernameTextField tap];
    [usernameTextField typeText:@"admin"];
    
    XCUIElement *passwordSecureTextField = app.secureTextFields[@"Password"];
    [passwordSecureTextField tap];
    [passwordSecureTextField typeText:@"password"];
    
    XCUIElement *loginButton = app.buttons[@"Login"];
    [loginButton tap];
    [app.alerts[@"Incorrect"].collectionViews.buttons[@"OK"] tap];
    [passwordSecureTextField typeText:@"Password"];
    [loginButton tap];
    
    
    
    XCUIApplication *app2 = [[XCUIApplication alloc] init];
    XCUIElement *usernameTextField2 = app2.textFields[@"Username"];
    [usernameTextField2 tap];
    [usernameTextField2 typeText:@"admin"];
    
    XCUIElement *passwordSecureTextField2 = app2.secureTextFields[@"Password"];
    [passwordSecureTextField2 tap];
    [passwordSecureTextField2 typeText:@"Password"];
    [app2.buttons[@"Login"] tap];
    
    
    
    
}

@end
