//
//  LoginViewController.m
//  BreastFeedingApplication
//
//  Created by Balasubramanian, Srinivas B on 12/8/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
//

#import "LoginViewController.h"
#import "SecondViewController.h"
#import "DB.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // self.db = [[DB alloc] initWithDatabaseFilename:@"bfeed.sqlite"];
    
    
}
-(IBAction)login:(id)sender
{
    if(([_username.text isEqualToString:@"admin"] && [_pwd.text isEqualToString:@"Password"]) || ([_username.text isEqualToString:@"ahmed"] && [_pwd.text isEqualToString:@"Password1"]) || ([_username.text isEqualToString:@"ashraf"] && [_pwd.text isEqualToString:@"Password1"])|| ([_username.text isEqualToString:@"abhi"] && [_pwd.text isEqualToString:@"Password1"])|| ([_username.text isEqualToString:@"srav"] && [_pwd.text isEqualToString:@"Password1"]) || ([_username.text isEqualToString:@"amma"] && [_pwd.text isEqualToString:@"Password1"]))
    {
        //UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Correct"                                                                       message:@"Welcome" preferredStyle:UIAlertControllerStyleAlert];
        
        // UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        
        //[alert addAction:defaultAction];
        // [self presentViewController:alert animated:YES completion:nil];
        //        SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
        //        secondViewController.struser = _username.text;
        
        //         self.username.delegate = self;
        ////
        //         NSLog(@"Your data: %@", _username.text);
        //        SecondViewController *secondViewController = [[SecondViewController alloc] init];
        //        secondViewController.struser = _username.text; // Set the exposed property
        //
        //        [self.navigationController pushViewController:secondViewController animated:YES];
        
        //       [self performSegueWithIdentifier:@"sendemail" sender:self];
        
    }
    
    else{
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Incorrect"                                                                       message:@"The username or password you entered is incorrect. Please try again." preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
    
    //[self.navigationItem setHidesBackButton:YES animated:YES];
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([segue.identifier isEqualToString:@"sendemail"]) {
//        SecondViewController *controller = segue.destinationViewController;
//        // set the properties value you want for destination View Controller
//        controller.struser = _username.text;
//    }
//}
//- (IBAction)signup:(id)sender {
//    
//    [[[[self.tabBarController tabBar]items]objectAtIndex:1]setEnabled:FALSE];
//    [[[[self.tabBarController tabBar]items]objectAtIndex:2]setEnabled:FALSE];
//    [[[[self.tabBarController tabBar]items]objectAtIndex:3]setEnabled:FALSE];
//    [[[[self.tabBarController tabBar]items]objectAtIndex:4]setEnabled:FALSE];
//    //[self presentViewController:alert animated:YES completion:nil];
//}

- (IBAction)Action:(id)sender {
        [self.view endEditing:YES];
}
@end
