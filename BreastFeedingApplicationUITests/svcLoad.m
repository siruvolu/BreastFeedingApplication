//
//  svcLoad.m
//  BreastFeedingApplication
//
//  Created by Siruvolu, Sai Anil on 12/15/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SecondViewController.h"

@interface svcLoad : XCTestCase

@end

@implementation svcLoad

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
    [app.textFields[@"Username"] typeText:@"wq"];
    
    XCUIElement *passwordSecureTextField = app.secureTextFields[@"Password"];
    [passwordSecureTextField tap];
    [passwordSecureTextField typeText:@"a"];
    [app.buttons[@"Login"] tap];
    [app.alerts[@"Incorrect"].collectionViews.buttons[@"OK"] tap];
    
}

-(void)testSave {
    
    
    
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [[[[[app.otherElements containingType:XCUIElementTypeStaticText identifier:@"     BreastFeeding App"] childrenMatchingType:XCUIElementTypeButton] matchingIdentifier:@"Sign Up"] elementBoundByIndex:1] tap];
    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
    
    XCUIElement *emailTextField = app.textFields[@"Email"];
    [emailTextField tap];
    [emailTextField typeText:@"amma@example.com"];
    
    XCUIElement *motherFirstNameTextField = app.textFields[@"Mother First Name"];
    [motherFirstNameTextField tap];
    [motherFirstNameTextField typeText:@"amma"];
    
    XCUIElement *motherLastNameTextField = app.textFields[@"Mother Last Name"];
    [motherLastNameTextField tap];
    [motherLastNameTextField typeText:@"a"];
    
    XCUIElement *motherAgeTextField = app.textFields[@"Mother Age"];
    [motherAgeTextField tap];
    [motherAgeTextField typeText:@"n"];
    
    XCUIElement *addressTextField = app.textFields[@"Address"];
    [addressTextField tap];
    [addressTextField typeText:@"f"];
    
    XCUIElement *childAgeMonthsTextField = app.textFields[@"Child Age (Months)"];
    [childAgeMonthsTextField tap];
    [childAgeMonthsTextField typeText:@"s"];
    
    XCUIElement *childWeightLbsTextField = app.textFields[@"Child Weight (lbs)"];
    [childWeightLbsTextField tap];
    [childWeightLbsTextField typeText:@"k"];
    
    XCUIElement *childSexTextField = app.textFields[@"Child Sex"];
    [childSexTextField tap];
    [childSexTextField typeText:@"r"];
    [app.buttons[@"Save"] tap];
    
    
}

-(void)testLoad{
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [[[[[app.otherElements containingType:XCUIElementTypeStaticText identifier:@"     BreastFeeding App"] childrenMatchingType:XCUIElementTypeButton] matchingIdentifier:@"Sign Up"] elementBoundByIndex:1] tap];
    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
    
    XCUIElement *emailTextField = app.textFields[@"Email"];
    [emailTextField tap];
    [emailTextField typeText:@"amma@example.com"];
    [app.buttons[@"Load"] tap];
    

}


//-(void)testLoad {
//    
//    
//    XCUIApplication *app = [[XCUIApplication alloc] init];
//    [app.buttons[@"Sign Up"] tap];
//    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
//    
//    XCUIElement *emailTextField2 = app.textFields[@"Email"];
//    [emailTextField2 tap];
//    [emailTextField2 typeText:@"amma@example.com"];
//    [app.buttons[@"Load"] tap];
//    //[app2.textFields[@"Mother First Name"] tap];
//    XCUIElement *motherTextField = [app.otherElements containingType:XCUIElementTypeStaticText identifier:@"mother"];
//    NSString *expectedString = @"amma";
//    XCTAssertEqualObjects(expectedString, motherTextField,@"The reversed string did not match the expected reverse");
//    
//    
////    XCUIApplication *app = [[XCUIApplication alloc] init];
////    XCUIElement *emailTextField = app.textFields[@"Email"];
////    XCUIElement *motherTextField = app.textFields[@"Mother First Name"];
////    [emailTextField Tap];
////    [emailTextField typeText:@"amma@example.com"];
////    [app.buttons[@"Load"] tap];
////    //NSString *resultString = motherTextField;
////    NSString *expectedString = @"amma";
////    XCTAssertEqualObjects(expectedString, motherTextField,@"The reversed string did not match the expected reverse");
//    
//}

-(void)testWebView{
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"Sign Up"] tap];
    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
    [app.tabBars.buttons[@"More"] tap];
    [app.staticTexts[@"Frequently Asked Questions"] tap];
    [app.staticTexts[@"Milk supply can be adversely affected by alcohol, cigarettes, over-the-counter cold remedies, antihistamines, decongestants, and hormone-based contraceptives."] swipeUp];
    }

-(void)testEmail{
    
}

-(void)testQuotes{
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"Sign Up"] tap];
    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
    [app.tabBars.buttons[@"More"] tap];
    [app.staticTexts[@"Quotes"] tap];
    [app.tables.staticTexts[@"When you feel like quitting: think about why you started."] tap];
    
    }

@end
