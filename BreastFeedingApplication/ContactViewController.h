//
//  ContactViewController.h
//  BreastFeedingApplication
//
//  Created by Anil Siruvolu on 12/8/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ContactViewController : UIViewController<MFMailComposeViewControllerDelegate>

-(IBAction)contactDoctor:(id)sender;
-(IBAction)contactPractitioner:(id)sender;
-(IBAction)contactLactationExpert:(id)sender;

@end

MFMailComposeViewController *mailComposer;