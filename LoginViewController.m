//
//  LoginViewController.m
//  BreastFeedingApplication
//
//  Created by Balasubramanian, Srinivas B on 12/8/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(IBAction)login:(id)sender
{
    if([_username.text isEqualToString:@"admin@example.com"] && [_pwd.text isEqualToString:@"Password"] )
    {
        //UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Correct"                                                                       message:@"Welcome" preferredStyle:UIAlertControllerStyleAlert];
        
       // UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        
        //[alert addAction:defaultAction];
       // [self presentViewController:alert animated:YES completion:nil];
    }
    
    else{
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Incorrect"                                                                       message:@"The username or password you entered is incorrect. Please try again." preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
 
    [self.navigationItem setHidesBackButton:YES animated:YES];
}

    - (IBAction)BackTap:(id)sender {
        [self.view endEditing:YES];
        

}
@end
