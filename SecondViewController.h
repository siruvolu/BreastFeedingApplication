//
//  SecondViewController.h
//  BreastFeedingApplication
//
//  Created by Kancharla, Soumya on 16/11/15.
//  Copyright © 2015 Kancharla, Soumya. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface SecondViewController : UIViewController<UITextFieldDelegate>


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

@property (nonatomic, retain) NSString *struser;

@property (nonatomic) int recordIDToEdit;

//- (IBAction)submitfrnew:(id)sender;

//- (IBAction)submitfrnew:(id)sender;
@end


