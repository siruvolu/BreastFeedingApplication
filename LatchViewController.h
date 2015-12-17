//
//  LatchViewController.h
//  BreastFeedingApplication
//
//  Created by Anil Siruvolu on 12/8/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface LatchViewController : UIViewController

@property (nonatomic) NSMutableArray *totalArray;

@property (strong, nonatomic) NSString *databasePath;
@property (strong, nonatomic) NSString *status;
@property (nonatomic) sqlite3 *contactDB;

@property (weak, nonatomic) IBOutlet UITextField *lemail;

@end
