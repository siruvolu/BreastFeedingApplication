//
//  SecondViewController.h
//  BreastFeedingApplication
//
//  Created by Anil Siruvolu on 12/8/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

<<<<<<< HEAD
=======
@interface SecondViewController : UIViewController<UITextFieldDelegate>
>>>>>>> siruvolu


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

<<<<<<< HEAD
@property (nonatomic) int recordIDToEdit;
=======
@property (strong, nonatomic) NSString *databasePath;
@property (strong, nonatomic) NSString *status;
@property (nonatomic) sqlite3 *contactDB;
>>>>>>> siruvolu

//- (IBAction)submitfrnew:(id)sender;

//- (IBAction)submitfrnew:(id)sender;
@end


