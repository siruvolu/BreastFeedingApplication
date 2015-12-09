//
//  ContactViewController.m
//  BreastFeedingApplication
//
//  Created by Anil Siruvolu on 12/8/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
//

#import "ContactViewController.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (IBAction)contactDoctor:(id)sender {
//}
//
//- (IBAction)contactPractitioner:(id)sender {
//}
//
//- (IBAction)contactLactationExpert:(id)sender {
//}

-(void)contactDoctor:(id)sender{
   
    
    // Email Subject
    NSString *emailTitle = @"Test Email";
    // Email Content
    NSString *messageBody = @"<h1>Learning iOS Programming!</h1>"; // Change the message body to HTML
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"siruvolu@icloud.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:YES];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
    
    

    
    
}




-(void)contactPractitioner:(id)sender{
//    mailComposer = [[MFMailComposeViewController alloc]init];
//    mailComposer.mailComposeDelegate = self;
//    [mailComposer setSubject:@"Test mail"];
//    [mailComposer setMessageBody:@"Testing message for the test mail" isHTML:NO];
    //[self presentModalViewController:mailComposer animated:YES];
    
   
    
    // Email Subject
    NSString *emailTitle = @"Test Email";
    // Email Content
    NSString *messageBody = @"<h1>Learning iOS Programming!</h1>"; // Change the message body to HTML
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"siruvolu@icloud.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:YES];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];

    
   
}

-(void)contactLactationExpert:(id)sender{
//    mailComposer = [[MFMailComposeViewController alloc]init];
//    mailComposer.mailComposeDelegate = self;
//    [mailComposer setSubject:@"Test mail"];
//    [mailComposer setMessageBody:@"Testing message for the test mail" isHTML:NO];
    //[self presentModalViewController:mailComposer animated:YES];
    
    // Email Subject
    NSString *emailTitle = @"Test Email";
    // Email Content
    NSString *messageBody = @"<h1>Learning iOS Programming!</h1>"; // Change the message body to HTML
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"siruvolu@icloud.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:YES];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
    
}

//#pragma mark - mail compose delegate
-(void)mailComposeController:(MFMailComposeViewController *)controller
         didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    if (result) {
        NSLog(@"Result : %d",result);
    }
    if (error) {
        NSLog(@"Error : %@",error);
    }
    [self dismissModalViewControllerAnimated:YES];
    
}

//- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
//{
//    switch (result)
//    {
//        case MFMailComposeResultCancelled:
//            NSLog(@"Mail cancelled: you cancelled the operation and no email message was queued.");
//            break;
//        case MFMailComposeResultSaved:
//            NSLog(@"Mail saved: you saved the email message in the drafts folder.");
//            break;
//        case MFMailComposeResultSent:
//            NSLog(@"Mail send: the email message is queued in the outbox. It is ready to send.");
//            break;
//        case MFMailComposeResultFailed:
//            NSLog(@"Mail failed: the email message was not saved or queued, possibly due to an error.");
//            break;
//        default:
//            NSLog(@"Mail not sent.");
//            break;
//    }
//    
//   
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
