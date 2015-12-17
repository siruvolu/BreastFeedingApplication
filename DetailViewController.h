//
//  DetailViewController.h
//  BreastFeedingApplication
//
//  Created by Siruvolu, Sai Anil on 12/16/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Patient.h"

@protocol DetailViewControllerDelegate;


@interface DetailViewController : UIViewController

@property (strong, nonatomic) Patient *Patientdetail;
@property (nonatomic, weak) id <DetailViewControllerDelegate> delegate;

@end

@protocol DetailViewControllerDelegate <NSObject>

- (void)detailControllerSaved:(DetailViewController *) controller;
- (void)detailControllerCanceled:(DetailViewController *) controller;

@end

