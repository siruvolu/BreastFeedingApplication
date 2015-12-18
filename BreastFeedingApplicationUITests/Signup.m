//
//  Signup.m
//  BreastFeedingApplication
//
//  Created by Balasubramanian, Srinivas B on 12/17/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface Signup : XCTestCase

@end

@implementation Signup

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
    [[[[[app.otherElements containingType:XCUIElementTypeStaticText identifier:@"     BreastFeeding App"] childrenMatchingType:XCUIElementTypeButton] matchingIdentifier:@"Sign Up"] elementBoundByIndex:1] tap];
    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
    
    XCUIElement *emailTextField = app.textFields[@"Email"];
    [emailTextField tap];
    [emailTextField typeText:@"kk"];
    
    XCUIElement *motherFirstNameTextField = app.textFields[@"Mother First Name"];
    [motherFirstNameTextField tap];
    [motherFirstNameTextField typeText:@""];
    
    XCUIElement *motherLastNameTextField = app.textFields[@"Mother Last Name"];
    [motherLastNameTextField tap];
    [motherLastNameTextField typeText:@"rt"];
    
    XCUIElement *motherAgeTextField = app.textFields[@"Mother Age"];
    [motherAgeTextField tap];
    [motherAgeTextField typeText:@"12"];
    
    XCUIElement *addressTextField = app.textFields[@"Address"];
    [addressTextField tap];
    [addressTextField typeText:@"as"];
    
    XCUIElement *childAgeMonthsTextField = app.textFields[@"Child Age (Months)"];
    [childAgeMonthsTextField tap];
    [addressTextField tap];
    [childAgeMonthsTextField tap];
    [childAgeMonthsTextField typeText:@"3"];
    
    XCUIElement *childWeightLbsTextField = app.textFields[@"Child Weight (lbs)"];
    [childWeightLbsTextField tap];
    [childWeightLbsTextField typeText:@"4"];
    
    XCUIElement *childSexTextField = app.textFields[@"Child Sex"];
    [childSexTextField tap];
    [childSexTextField typeText:@"f\n"];
    [[[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element swipeUp];
    [app.buttons[@"Save"] tap];
    
}

@end
