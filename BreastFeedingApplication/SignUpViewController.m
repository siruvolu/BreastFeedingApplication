//
//  SignUpViewController.m
//  BreastFeedingApplication
//
//  Created by Balasubramanian, Srinivas B on 12/8/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import "SignUpViewController.h"
#import "LoginViewController.h"


@interface SignupViewController ()

@end


@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (BOOL)pwd:(UITextField *)pwd shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSUInteger newLength = [pwd.text length] + [string length] - range.length;
    return (newLength >= 2) ? NO : YES;
}


-(IBAction)submitbtn:(id)sender
{
    if([_mothername.text isEqualToString:@""] && [_motherlast.text isEqualToString:@""] && [_motherdob.text isEqualToString:@""] && [_motherpob.text isEqualToString:@""] && [_childdob.text isEqualToString:@""] && [_childwt.text isEqualToString:@""]&& [_chsex.text isEqualToString:@""] && [_emailid.text isEqualToString:@""] && [_pwd.text isEqualToString:@""] && [_reenterpwd.text isEqualToString:@""])
    {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"ATTENTION!" message:@"You must enter all the fields" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    
    else if ([_pwd.text isEqualToString:_reenterpwd.text]) {
        NSLog(@"Password Match");
        [self Submituser];
        
    }
    else {
        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Sorry !" message:@"Password does not match" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {}];
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

-(void) Submituser {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];   // To store the details given by the user
    [defaults setObject:_mothername.text forKey:@"mothername"];
    [defaults setObject:_motherlast.text forKey:@"motherlast"];
    [defaults setObject:_motherdob.text forKey:@"motherdob"];
    [defaults setObject:_motherpob.text forKey:@"motherpob"];
    [defaults setObject:_childdob.text forKey:@"childdob"];
    [defaults setObject:_childwt.text forKey:@"Childweight"];
    [defaults setObject:_chsex.text forKey:@"Child Sex"];
    [defaults setObject:_chsex.text forKey:@"Child Sex"];
    [defaults setObject:_emailid.text forKey:@"Email id"];
    [defaults setObject:_pwd.text forKey:@"Password"];
    [defaults setObject:_reenterpwd.text forKey:@"Reenter Password"];
    
    [defaults setBool:YES forKey:@"Registered"];
    
    [defaults synchronize];
    
    UIAlertController * success = [UIAlertController alertControllerWithTitle:@"Success" message:@"You have successfully registered" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {}];
    [success addAction:defaultAction];
    [self presentViewController:success animated:YES completion:nil];
    [self navRef];
}

-(void) navRef {
    [self performSegueWithIdentifier:@"Submit" sender:nil];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */


//}
//
//-(void) navRef {
//    [self performSegueWithIdentifier:@"Submit" sender:nil];
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

