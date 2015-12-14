//
//  docloginViewController.m
//  BreastFeedingApplication
//
//  Created by Balasubramanian, Srinivas B on 12/9/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import "docloginViewController.h"

@interface docloginViewController ()

@end

@implementation docloginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)doclogin:(id)sender
{
    if([_doctorname.text isEqualToString:@"Username"] || [_docpwd.text isEqualToString:@"Password"] )
    {
        //UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Correct"                                                                       message:@"Welcome" preferredStyle:UIAlertControllerStyleAlert];
        
        // UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        
        //  [alert addAction:defaultAction];
        // [self presentViewController:alert animated:YES completion:nil];
    }
    
    else{
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Incorrect"                                                                       message:@"The username or password you entered is incorrect. Please try again." preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
    
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */


    - (IBAction)BackTap:(id)sender {
        [self.view endEditing:YES];
        
    }
@end
