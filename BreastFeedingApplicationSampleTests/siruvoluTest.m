//
//  siruvoluTest.m
//  BreastFeedingApplication
//
//  Created by Siruvolu, Sai Anil on 12/16/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AppDelegate.h"
#import "SecondViewController.h"
#import "LatchViewController.h"

@interface siruvoluTest : XCTestCase{
@private
    UIApplication *app;
    AppDelegate     *appDelegate;
    SecondViewController  *secondViewController;
    LatchViewController *latchViewController;
    UIView *bfView;

}

@end

@implementation siruvoluTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    appDelegate =[[UIApplication sharedApplication] delegate];
     UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    secondViewController = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    latchViewController = [storyboard instantiateViewControllerWithIdentifier:@"LatchViewController"];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

//- (void) testBfView {
    // setup
//    app = [UIApplication sharedApplication];
//    secondViewController = (SecondViewController*)[[UIApplication sharedApplication] delegate];
//    bfView             = secondViewController.view;
   
    
//    [secondViewController press:[bfView viewWithTag: @"Load"]];
    
    //[secondViewController loadtable];
    //secondViewController.emailid = (UITextField *)@"amma@example.com";
   // NSString *stremailt = @"amma@example.com";
    
//    secondViewController.emailid.text = @"amma@example.com";
//    [secondViewController loadMother];
//    NSString *strmothert = @"Amma";
//    XCTAssertEqual(secondViewController.mothername.text, strmothert);
//    // no teardown needed
//}

-(void)testemailTrue {
    
    //NSString *strone = secondViewController.stremail;
    //secondViewController.emailid = (UITextField *)@"amma";
    secondViewController.emailid.text = @"amma@example.com";
    
    //XCTAssertTrue([latchViewController.lemail.text isEqual:@"amma"]);
    
    XCTAssertEqualObjects(latchViewController.lemail.text,secondViewController.emailid.text);
    
}

-(void)testemailFalse {
    
    secondViewController.emailid.text = @"amma@example.com";
    
    //XCTAssertTrue([latchViewController.lemail.text isEqual:@"amma"]);
    
    XCTAssertNotEqualObjects(latchViewController.lemail.text,secondViewController.emailid.text);
    
}

-(void)testMotherDetailsFields {
    
    secondViewController.motherlast = (UITextField *)@"lastname";
    secondViewController.mothername = (UITextField *)@"firstname";
    secondViewController.motherdob = (UITextField *)@"33";
    secondViewController.motherpob = (UITextField *)@"217";
    secondViewController.childdob = (UITextField *)@"9";
    secondViewController.childwt = (UITextField *)@"10";
    secondViewController.chsex = (UITextField *)@"Male";
    secondViewController.emailid = (UITextField *)@"email@example.com";
    XCTAssertTrue([secondViewController.motherlast isEqual:@"lastname"]);
    XCTAssertTrue([secondViewController.mothername isEqual:@"firstname"]);
    XCTAssertTrue([secondViewController.motherdob isEqual:@"33"]);
    XCTAssertTrue([secondViewController.motherpob isEqual:@"217"]);
    XCTAssertTrue([secondViewController.childdob isEqual:@"9"]);
    XCTAssertTrue([secondViewController.childwt isEqual:@"10"]);
    XCTAssertTrue([secondViewController.chsex isEqual:@"Male"]);
    XCTAssertTrue([secondViewController.emailid isEqual:@"email@example.com"]);
    
}






    
    
    
   

@end
