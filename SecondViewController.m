//
//  SecondViewController.m
//  BreastFeedingApplication
//
//  Created by Kancharla, Soumya on 16/11/15.
//  Copyright © 2015 Kancharla, Soumya. All rights reserved.
//

#import "SecondViewController.h"
#import "LoginViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


//To check password length
- (BOOL)pwd:(UITextField *)pwd shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSUInteger newLength = [pwd.text length] + [string length] - range.length;
    return (newLength >= 2) ? NO : YES;
}

//Validations for email id
- (BOOL)validateEmailWithString:(NSString*)emailid
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:emailid];
}


-(IBAction)submitbtn:(id)sender
{
    if([_mothername.text isEqualToString:@""] || [_motherlast.text isEqualToString:@""] || [_motherdob.text isEqualToString:@""] || [_motherpob.text isEqualToString:@""] || [_childdob.text isEqualToString:@""] || [_childwt.text isEqualToString:@""]|| [_chsex.text isEqualToString:@""] || [_emailid.text isEqualToString:@""] || [_pwd.text isEqualToString:@""] || [_reenterpwd.text isEqualToString:@""])
    {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"ATTENTION!" message:@"You must enter all the fields" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        
        
        //To disable tab bars
        
        [[[[self.tabBarController tabBar]items]objectAtIndex:1]setEnabled:FALSE];
        [[[[self.tabBarController tabBar]items]objectAtIndex:2]setEnabled:FALSE];
        [[[[self.tabBarController tabBar]items]objectAtIndex:3]setEnabled:FALSE];
        [[[[self.tabBarController tabBar]items]objectAtIndex:4]setEnabled:FALSE];
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
    
    // To enable tab bars
    
    [[[[self.tabBarController tabBar]items]objectAtIndex:1]setEnabled:TRUE];
    [[[[self.tabBarController tabBar]items]objectAtIndex:2]setEnabled:TRUE];
    [[[[self.tabBarController tabBar]items]objectAtIndex:3]setEnabled:TRUE];
    [[[[self.tabBarController tabBar]items]objectAtIndex:4]setEnabled:TRUE];
    
    [self presentViewController:success animated:YES completion:nil];
    
       
    
//    [self navRef];
//}
//
//-(void) navRef {
//    [self performSegueWithIdentifier:@"Submit" sender:nil];
//}

/*
 #pragma mark - Navigation - Srini
 
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
}

- (IBAction)BackTap:(id)sender {
     [self.view endEditing:YES];
}
@end
