//
//  SignUpViewController.h
//  BreastFeedingApplication
//
//  Created by Balasubramanian, Srinivas B on 12/8/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignupViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *submitbtn;
@property (weak, nonatomic) IBOutlet UITextField *mothername;
@property (weak, nonatomic) IBOutlet UITextField *motherlast;
@property (weak, nonatomic) IBOutlet UITextField *motherdob;
@property (weak, nonatomic) IBOutlet UITextField *motherpob;
@property (weak, nonatomic) IBOutlet UITextField *childdob;
@property (weak, nonatomic) IBOutlet UITextField *childwt;
@property (weak, nonatomic) IBOutlet UITextField *chsex;
@property (weak, nonatomic) IBOutlet UITextField *emailid;
@property (weak, nonatomic) IBOutlet UITextField *pwd;
@property (weak, nonatomic) IBOutlet UITextField *reenterpwd;

- (IBAction)submitfrnew:(id)sender;

//- (IBAction)submitfrnew:(id)sender;
@end
