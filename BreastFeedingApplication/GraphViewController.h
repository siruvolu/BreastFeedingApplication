//
//  GraphViewController.h
//  BreastFeedingApplication
//
//  Created by Anil Siruvolu on 12/8/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LatchViewController.h"

@interface GraphViewController : UIViewController

@property (nonatomic) LatchViewController *latchVC;
@property (nonatomic, retain) NSString *stremail;

@end
