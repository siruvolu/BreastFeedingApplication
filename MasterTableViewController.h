//
//  MasterTableTableViewController.h
//  BreastFeedingApplication
//
//  Created by Siruvolu, Sai Anil on 12/16/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterTableViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end