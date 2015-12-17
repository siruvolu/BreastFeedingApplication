//
//  svcLoad.m
//  BreastFeedingApplication
//
//  Created by Siruvolu, Sai Anil on 12/15/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
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
    
//    XCUIApplication *app = [[XCUIApplication alloc] init];
//    [app.textFields[@"Username"] typeText:@"wq"];
//    
//    XCUIElement *passwordSecureTextField = app.secureTextFields[@"Password"];
//    [passwordSecureTextField tap];
//    [passwordSecureTextField typeText:@"a"];
//    [app.buttons[@"Login"] tap];
//    [app.alerts[@"Incorrect"].collectionViews.buttons[@"OK"] tap];
//    
}


-(void)testSave {

XCUIApplication *app = [[XCUIApplication alloc] init];
XCUIElement *usernameTextField = app.textFields[@"Username"];
[usernameTextField tap];
[usernameTextField typeText:@"amma"];

XCUIElement *passwordSecureTextField = app.secureTextFields[@"Password"];
[passwordSecureTextField tap];

XCUIElement *shiftButton = app.buttons[@"shift"];
[shiftButton tap];
[passwordSecureTextField typeText:@"Password"];

XCUIElement *moreNumbersKey = app.keys[@"more, numbers"];

[moreNumbersKey tap];
[passwordSecureTextField typeText:@"1"];
[app.buttons[@"Login"] tap];

XCUIElement *okButton = app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"];

[okButton tap];

XCUIElement *emailTextField = app.textFields[@"Email"];
[emailTextField tap];
[emailTextField typeText:@"amma"];

[moreNumbersKey tap];
[emailTextField typeText:@"@"];

XCUIElement *moreLettersKey = app.keys[@"more, letters"];

[moreLettersKey tap];
[emailTextField typeText:@"example"];

[moreNumbersKey tap];
[emailTextField typeText:@"."];

[moreLettersKey tap];
[emailTextField typeText:@"com"];

XCUIElement *motherFirstNameTextField = app.textFields[@"Mother First Name"];
[motherFirstNameTextField tap];
[motherFirstNameTextField typeText:@"amma"];

XCUIElement *motherLastNameTextField = app.textFields[@"Mother Last Name"];
[motherLastNameTextField tap];
[motherLastNameTextField typeText:@"s"];

XCUIElement *motherAgeTextField = app.textFields[@"Mother Age"];
[motherAgeTextField tap];
[moreNumbersKey tap];

[motherAgeTextField typeText:@"33"];

XCUIElement *addressTextField = app.textFields[@"Address"];
[addressTextField tap];

[moreNumbersKey tap];
[addressTextField typeText:@"2922"];

XCUIElement *childAgeMonthsTextField = app.textFields[@"Child Age (Months)"];
[childAgeMonthsTextField tap];

[moreNumbersKey tap];
[childAgeMonthsTextField typeText:@"9"];

XCUIElement *childWeightLbsTextField = app.textFields[@"Child Weight (lbs)"];
[childWeightLbsTextField tap];

[moreNumbersKey tap];
[childWeightLbsTextField typeText:@"7"];

XCUIElement *childSexTextField = app.textFields[@"Child Sex"];
[childSexTextField tap];
[shiftButton tap];
[childSexTextField typeText:@"Male"];
[[[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
[app.buttons[@"Save"] tap];

XCTAssertTrue(app.alerts[@"Saved"].exists);
//    XCTAssertTrue([motherFirstNameTextField isEqual:@"amma"]);

}

-(void)testLoad{
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [[[[[app.otherElements containingType:XCUIElementTypeStaticText identifier:@"     BreastFeeding App"] childrenMatchingType:XCUIElementTypeButton] matchingIdentifier:@"Sign Up"] elementBoundByIndex:1] tap];
    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
    
    XCUIElement *emailTextField = app.textFields[@"Email"];
    [emailTextField tap];
    [emailTextField typeText:@"amma@example.com"];
    [app.buttons[@"Load"] tap];
    
    XCTAssertTrue(app.alerts[@"Data Loaded"].exists);
    
    
}

-(void)testLatchView{
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *usernameTextField = app.textFields[@"Username"];
    [usernameTextField tap];
    [usernameTextField typeText:@"amma"];
    
    XCUIElement *passwordSecureTextField = app.secureTextFields[@"Password"];
    [passwordSecureTextField tap];
    
    XCUIElement *shiftButton = app.buttons[@"shift"];
    [shiftButton tap];
    [passwordSecureTextField typeText:@"Password"];
    [shiftButton tap];
    
    XCUIElement *moreNumbersKey = app.keys[@"more, numbers"];
    [moreNumbersKey tap];
    
    [passwordSecureTextField typeText:@"1"];
    [app.buttons[@"Login"] tap];
    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
    
    XCUIElement *emailTextField = app.textFields[@"Email"];
    [emailTextField tap];
    [emailTextField typeText:@"amma"];
    [moreNumbersKey tap];
    
    [emailTextField typeText:@"@"];
    
    XCUIElement *moreLettersKey = app.keys[@"more, letters"];
    [moreLettersKey tap];
    
    [emailTextField typeText:@"example"];
    [moreNumbersKey tap];
    
    [emailTextField typeText:@"."];
    [moreLettersKey tap];
    
    [emailTextField typeText:@"com"];
    [app.buttons[@"Load"] tap];
    [app.alerts[@"Data Loaded"].collectionViews.buttons[@"OK"] tap];
    [[[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
    [app.tabBars.buttons[@"Latch Score"] tap];
    [app.staticTexts[@"Latch"] tap];
    
    XCTAssertTrue(app.staticTexts[@"Latch"].exists);
    
}

-(void)testLatchpick{
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *usernameTextField = app.textFields[@"Username"];
    [usernameTextField tap];
    [usernameTextField typeText:@"amma"];
    
    XCUIElement *passwordSecureTextField = app.secureTextFields[@"Password"];
    [passwordSecureTextField tap];
    
    XCUIElement *shiftButton = app.buttons[@"shift"];
    [shiftButton tap];
    [passwordSecureTextField typeText:@"Password"];
    [shiftButton tap];
    
    XCUIElement *moreNumbersKey = app.keys[@"more, numbers"];
    [moreNumbersKey tap];
    
    [passwordSecureTextField typeText:@"1"];
    [app.buttons[@"Login"] tap];
    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
    
    XCUIElement *emailTextField = app.textFields[@"Email"];
    [emailTextField tap];
    [emailTextField typeText:@"amma"];
    [moreNumbersKey tap];
    
    [emailTextField typeText:@"@"];
    
    XCUIElement *moreLettersKey = app.keys[@"more, letters"];
    [moreLettersKey tap];
    
    [emailTextField typeText:@"example"];
    [moreNumbersKey tap];
    
    [emailTextField typeText:@"."];
    [moreLettersKey tap];
    
    [emailTextField typeText:@"com"];
    [app.buttons[@"Load"] tap];
    [app.alerts[@"Data Loaded"].collectionViews.buttons[@"OK"] tap];
    [[[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
    [app.tabBars.buttons[@"Latch Score"] tap];
    [app.staticTexts[@"Latch"] tap];
    
    //XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.pickerWheels[@"No latch obtained"] tap];
    [app.pickerWheels[@"None"] tap];
    [app.pickerWheels[@"Inverted"] tap];
    [app.pickerWheels[@"Engorged Cracked"] tap];
    [app.buttons[@"Total"] tap];
    
    XCTAssertTrue(app.staticTexts[@"0"].exists);
    
}

//-(void)testLatchpick2{
//    
//    XCUIApplication *app = [[XCUIApplication alloc] init];
//    XCUIElement *usernameTextField = app.textFields[@"Username"];
//    [usernameTextField tap];
//    [usernameTextField typeText:@"amma"];
//    
//    XCUIElement *passwordSecureTextField = app.secureTextFields[@"Password"];
//    [passwordSecureTextField tap];
//    
//    XCUIElement *shiftButton = app.buttons[@"shift"];
//    [shiftButton tap];
//    [passwordSecureTextField typeText:@"Password"];
//    [shiftButton tap];
//    
//    XCUIElement *moreNumbersKey = app.keys[@"more, numbers"];
//    [moreNumbersKey tap];
//    
//    [passwordSecureTextField typeText:@"1"];
//    [app.buttons[@"Login"] tap];
//    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
//    
//    XCUIElement *emailTextField = app.textFields[@"Email"];
//    [emailTextField tap];
//    [emailTextField typeText:@"amma"];
//    [moreNumbersKey tap];
//    
//    [emailTextField typeText:@"@"];
//    
//    XCUIElement *moreLettersKey = app.keys[@"more, letters"];
//    [moreLettersKey tap];
//    
//    [emailTextField typeText:@"example"];
//    [moreNumbersKey tap];
//    
//    [emailTextField typeText:@"."];
//    [moreLettersKey tap];
//    
//    [emailTextField typeText:@"com"];
//    [app.buttons[@"Load"] tap];
//    [app.alerts[@"Data Loaded"].collectionViews.buttons[@"OK"] tap];
//    [[[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
//    [app.tabBars.buttons[@"Latch Score"] tap];
//    [app.staticTexts[@"Latch"] tap];
//    
//    //XCUIApplication *app = [[XCUIApplication alloc] init];
//    [app.pickerWheels[@"No latch obtained"] tap];
//    [app.pickerWheels[@"Rhythmic suckling"] tap];
//    [app.pickerWheels[@"None"] tap];
//    [app.pickerWheels[@"Inverted"] tap];
//    [app.pickerWheels[@"Engorged Cracked"] tap];
//    [app.buttons[@"Total"] tap];
//    
//    XCTAssertTrue(app.staticTexts[@"2"].exists);
//    
//    
////    XCUIApplication *app = [[XCUIApplication alloc] init];
////    [app.pickerWheels[@"No latch obtained"] tap];
////    
////    XCUIElement *repeatedAttemptsPickerWheel = app.pickerWheels[@"Repeated attempts"];
////    [repeatedAttemptsPickerWheel tap];
////    [repeatedAttemptsPickerWheel tap];
////    [app.pickerWheels[@"Rhythmic suckling"] tap];
////    [app.pickerWheels[@"None"] tap];
////    [app.pickerWheels[@"A few with stimulation"] tap];
////    [app.pickerWheels[@"Inverted"] tap];
////    
////    XCUIElement *flatPickerWheel = app.pickerWheels[@"Flat"];
////    [flatPickerWheel tap];
////    [flatPickerWheel tap];
////    [app.pickerWheels[@"Engorged Cracked"] tap];
////    [app.pickerWheels[@"Soft Tender Intact nipples"] tap];
////    [app.pickerWheels[@"Full assist"] tap];
////    [app.pickerWheels[@"Minimal assist"] tap];
//    
//    
//}



-(void)testWebView{
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *usernameTextField = app.textFields[@"Username"];
    [usernameTextField tap];
    [usernameTextField typeText:@"amma"];
    
    XCUIElement *passwordSecureTextField = app.secureTextFields[@"Password"];
    [passwordSecureTextField tap];
    [app.buttons[@"shift"] tap];
    [passwordSecureTextField typeText:@"Password"];
    
    XCUIElement *moreNumbersKey = app.keys[@"more, numbers"];
    [moreNumbersKey tap];
    
    [passwordSecureTextField typeText:@"1"];
    [app.buttons[@"Login"] tap];
    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
    
    XCUIElement *emailTextField = app.textFields[@"Email"];
    [emailTextField tap];
    [emailTextField typeText:@"amma"];
    [moreNumbersKey tap];
    
    [emailTextField typeText:@"@"];
    
    XCUIElement *moreLettersKey = app.keys[@"more, letters"];
    [moreLettersKey tap];
    
    [emailTextField typeText:@"example"];
    [moreNumbersKey tap];
    
    [emailTextField typeText:@"."];
    [moreLettersKey tap];
    
    [emailTextField typeText:@"com"];
    [app.buttons[@"Load"] tap];
    [app.alerts[@"Data Loaded"].collectionViews.buttons[@"OK"] tap];
    [[[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
    [app.tabBars.buttons[@"More"] tap];
    [app.staticTexts[@"Frequently Asked Questions"] tap];
    //[app.staticTexts[@"Avoid bottles and pacifiers until breastfeeding is well established (usually about 4 weeks)."] tap];
    
    
    XCTAssertTrue(app.staticTexts[@"Avoid bottles and pacifiers until breastfeeding is well established (usually about 4 weeks)."].exists);
    
    
    
}



-(void)testEmail{
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *usernameTextField = app.textFields[@"Username"];
    [usernameTextField tap];
    [usernameTextField typeText:@"amma"];
    
    XCUIElement *passwordSecureTextField = app.secureTextFields[@"Password"];
    [passwordSecureTextField tap];
    [app.buttons[@"shift"] tap];
    [passwordSecureTextField typeText:@"Password"];
    
    XCUIElement *moreNumbersKey = app.keys[@"more, numbers"];
    [moreNumbersKey tap];
    
    [passwordSecureTextField typeText:@"1"];
    [app.buttons[@"Login"] tap];
    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
    
    XCUIElement *emailTextField = app.textFields[@"Email"];
    [emailTextField tap];
    [emailTextField typeText:@"amma"];
    [moreNumbersKey tap];
    
    [emailTextField typeText:@"@"];
    
    XCUIElement *moreLettersKey = app.keys[@"more, letters"];
    [moreLettersKey tap];
    
    [emailTextField typeText:@"example"];
    [moreNumbersKey tap];
    
    [emailTextField typeText:@"."];
    [moreLettersKey tap];
    
    [emailTextField typeText:@"com"];
    [app.buttons[@"Load"] tap];
    [app.alerts[@"Data Loaded"].collectionViews.buttons[@"OK"] tap];
    [[[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
    [app.tabBars.buttons[@"More"] tap];
    
    [app.staticTexts[@"Contact"] tap];

    [[[XCUIApplication alloc] init].buttons[@"Contact Doctor"] tap];
    
    
}

-(void)testQuotesTrue{
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *usernameTextField = app.textFields[@"Username"];
    [usernameTextField tap];
    [usernameTextField typeText:@"amma"];
    
    XCUIElement *passwordSecureTextField = app.secureTextFields[@"Password"];
    [passwordSecureTextField tap];
    [app.buttons[@"shift"] tap];
    [passwordSecureTextField typeText:@"Password"];
    
    XCUIElement *moreNumbersKey = app.keys[@"more, numbers"];
    [moreNumbersKey tap];
    
    [passwordSecureTextField typeText:@"1"];
    [app.buttons[@"Login"] tap];
    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
    
    XCUIElement *emailTextField = app.textFields[@"Email"];
    [emailTextField tap];
    [emailTextField typeText:@"amma"];
    [moreNumbersKey tap];
    
    [emailTextField typeText:@"@"];
    
    XCUIElement *moreLettersKey = app.keys[@"more, letters"];
    [moreLettersKey tap];
    
    [emailTextField typeText:@"example"];
    [moreNumbersKey tap];
    
    [emailTextField typeText:@"."];
    [moreLettersKey tap];
    
    [emailTextField typeText:@"com"];
    [app.buttons[@"Load"] tap];
    [app.alerts[@"Data Loaded"].collectionViews.buttons[@"OK"] tap];
    [[[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
    [app.tabBars.buttons[@"More"] tap];
    
    [app.staticTexts[@"Quotes"] tap];
    //[app.tables.staticTexts[@"When you feel like quitting: think about why you started."] tap];
    
    XCTAssertTrue(app.staticTexts[@"Inspirational Quotes"].exists);
    
}

-(void)testQuotesFalse{
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *usernameTextField = app.textFields[@"Username"];
    [usernameTextField tap];
    [usernameTextField typeText:@"amma"];
    
    XCUIElement *passwordSecureTextField = app.secureTextFields[@"Password"];
    [passwordSecureTextField tap];
    [app.buttons[@"shift"] tap];
    [passwordSecureTextField typeText:@"Password"];
    
    XCUIElement *moreNumbersKey = app.keys[@"more, numbers"];
    [moreNumbersKey tap];
    
    [passwordSecureTextField typeText:@"1"];
    [app.buttons[@"Login"] tap];
    [app.alerts[@"Already Info Saved"].collectionViews.buttons[@"OK"] tap];
    
    XCUIElement *emailTextField = app.textFields[@"Email"];
    [emailTextField tap];
    [emailTextField typeText:@"amma"];
    [moreNumbersKey tap];
    
    [emailTextField typeText:@"@"];
    
    XCUIElement *moreLettersKey = app.keys[@"more, letters"];
    [moreLettersKey tap];
    
    [emailTextField typeText:@"example"];
    [moreNumbersKey tap];
    
    [emailTextField typeText:@"."];
    [moreLettersKey tap];
    
    [emailTextField typeText:@"com"];
    [app.buttons[@"Load"] tap];
    [app.alerts[@"Data Loaded"].collectionViews.buttons[@"OK"] tap];
    [[[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
    [app.tabBars.buttons[@"More"] tap];
    
    [app.staticTexts[@"Quotes"] tap];
    //[app.tables.staticTexts[@"When you feel like quitting: think about why you started."] tap];
    
    XCTAssertFalse(app.staticTexts[@"Inspirational"].exists);
    
}











@end
