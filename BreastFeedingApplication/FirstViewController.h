//
//  FirstViewController.h
//  BreastFeedingApplication
//
//  Created by Kancharla, Soumya on 16/11/15.
//  Copyright © 2015 Kancharla, Soumya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
@interface FirstViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UIButton *leftButton,*rightButton;
    IBOutlet UILabel *timerLabel;
    IBOutlet UITableView *sessionTable;
    DataModel *dataModal;
    NSMutableArray *feedRecords;
}
-(IBAction)leftClicked:(id)sender;
-(IBAction)rightClicked:(id)sender;

@end

