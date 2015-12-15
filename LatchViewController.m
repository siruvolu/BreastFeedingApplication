//
//  LatchViewController.m
//  BreastFeedingApplication
//
//  Created by Anil Siruvolu on 12/8/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
//

#import "LatchViewController.h"

@interface LatchViewController (){
    int lScore, aScore, tScore, cScore, hScore, total;
    
}
@property (weak, nonatomic) IBOutlet UIPickerView *lpick;
@property (weak, nonatomic) IBOutlet UIPickerView *apick;
@property (weak, nonatomic) IBOutlet UIPickerView *tpick;
@property (weak, nonatomic) IBOutlet UIPickerView *cpick;
@property (weak, nonatomic) IBOutlet UIPickerView *hpick;

@property NSArray *lScale, *aScale, *tScale, *cScale, *hScale;

@property (weak, nonatomic) IBOutlet UILabel *totalScore;
@property (weak, nonatomic) IBOutlet UITextField *lemail;

- (void)saveData;
@end

@implementation LatchViewController

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    if (pickerView == self.lpick) {
        return 1;
    }
    if (pickerView == self.apick) {
        return 1;
    }
    if (pickerView == self.tpick) {
        return 1;
    }
    if (pickerView == self.cpick) {
        return 1;
    }
    if (pickerView == self.hpick) {
        return 1;
    }
   
    
    return 0;
    
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    // As we have just one to five grading scale
    if (pickerView == self.lpick) {
        return 3;
    }
    if (pickerView == self.apick) {
        return 3;
    }
    if (pickerView == self.tpick) {
        return 3;
    }
    if (pickerView == self.cpick) {
        return 3;
    }
    if (pickerView == self.hpick) {
        return 3;
    }
   
    return 0;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (pickerView == self.lpick) {
        return self.lScale[row];
    }
    if (pickerView == self.apick) {
        return self.aScale[row];
    }
    if (pickerView == self.tpick) {
        return self.tScale[row];
    }
    if (pickerView == self.cpick) {
        return self.cScale[row];
    }
    if (pickerView == self.hpick) {
        return self.hScale[row];
    }
    
    return 0;
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
  if (pickerView == self.lpick) {
        
      
        
        switch (row) {
            case 0:
                lScore = 0;
                break;
            case 1:
                lScore = 1;
                break;
            case 2:
                lScore = 2;
                break;
            
           
                
            default:
                break;
        }
    }
    if (pickerView == self.apick) {
        
        
        switch (row) {
            case 0:
                aScore = 0;
                break;
            case 1:
                aScore = 1;
                break;
            case 2:
                aScore = 2;
                break;
           
                
            default:
                break;
        }
    }
    if (pickerView == self.tpick) {
        
        
        switch (row) {
            case 0:
                tScore = 0;
                break;
            case 1:
                tScore = 1;
                break;
            case 2:
                tScore = 2;
                break;
           
                
            default:
                break;
        }
    }
    if (pickerView == self.cpick) {
        
        
        switch (row) {
            case 0:
                cScore = 0;
                break;
            case 1:
                cScore = 1;
                break;
            case 2:
                cScore = 2;
                break;
           
                
            default:
                break;
        }
    }
    if (pickerView == self.hpick) {
       
        
        switch (row) {
            case 0:
                hScore = 0;
                break;
            case 1:
                hScore = 1;
                break;
            case 2:
                hScore = 2;
                break;
            
                
            default:
                break;
        }
    }
}

- (IBAction)Total:(id)sender {
    
    total = lScore+aScore+tScore+cScore+hScore;
    NSNumber *newTotal = [NSNumber numberWithInt:total];
    [self.totalArray addObject:newTotal];
    self.totalScore.text = [NSString stringWithFormat:@"%d",total];
    
       [self saveData];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.totalArray = [[NSMutableArray alloc]init];
    
    self.lScale = @[@"No latch obtained",@"Repeated attempts",@"Rhythmic suckling"];
    
    self.aScale = @[@"None",@"A few with stimulation",@"Spontaneous"];
    
    self.tScale = @[@"Inverted",@"Flat",@"Everted"];
    
    self.cScale = @[@"Engorged Cracked",@"Filling",@"Soft Tender Intact nipples"];
    
    self.hScale = @[@"Full assist",@"Minimal assist",@"No assist"];
    
//    self.lScale = @[@"Too sleepy or reluctant, No latch obtained",@"Repeated attempts Must hold nipple in mouth Must stimulate to suck",@"Grasps breast, Tongue down and forward, Lips flanged,Rhythmic suckling"];
//    
//    self.aScale = @[@"None",@"A few with stimulation",@"Spontaneous, intermittent (less than 24 hours old) Spontaneous, frequent (greater than 24 hours old)"];
//    
//    self.tScale = @[@"Inverted",@"Flat",@"Everted (after stimulation)"];
//    
//    self.cScale = @[@"Engorged Cracked, bleeding, large blisters or bruises Severe discomfort",@"Filling, Small blisters or bruises Mother complains of pinching Mild/moderate discomfort",@"Soft Tender Intact nipples (no damage)"];
//    
//    self.hScale = @[@"Full assist (staff holds infant at breast)",@"Minimal assist (i.e. elevate head of bed, place pillows) Teach one side, mother does other. Staff help, mother takes over feeding",@"No assist from staff. Mother able to position/hold infant."];
    
    NSString *docsDir;
    NSArray *dirPaths;
    
    // Get the documents directory
    dirPaths = NSSearchPathForDirectoriesInDomains(
                                                   NSDocumentDirectory, NSUserDomainMask, YES);
    
    docsDir = dirPaths[0];
    
    // Build the path to the database file
    _databasePath = [[NSString alloc]
                     initWithString: [docsDir stringByAppendingPathComponent:
                                      @"bf.db"]];
    
    NSFileManager *filemgr = [NSFileManager defaultManager];
    
    if ([filemgr fileExistsAtPath: _databasePath ] == NO)
    {
        const char *dbpath = [_databasePath UTF8String];
        
        if (sqlite3_open(dbpath, &_contactDB) == SQLITE_OK)
        {
            char *errMsg;
            const char *sql_stmt =
            "CREATE TABLE IF NOT EXISTS LATCH (ID INTEGER PRIMARY KEY AUTOINCREMENT, EMAIL TEXT, LSCORE INTEGER)";
            
            if (sqlite3_exec(_contactDB, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                NSLog(@"Failed to create table");
            }
            sqlite3_close(_contactDB);
        } else {
            NSLog(@"Failed to open/create database");
        }
    }
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Before starting!" message:@"Enter the email to store data" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {}];
    
    [alert addAction:defaultAction];
    
    [self presentViewController:alert animated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)saveData{
    {
        sqlite3_stmt    *statement;
        const char *dbpath = [_databasePath UTF8String];
        
        if (sqlite3_open(dbpath, &_contactDB) == SQLITE_OK)
        {
            
            NSString *insertSQL = [NSString stringWithFormat:
                                   @"INSERT INTO LATCH (email, lscore) VALUES (\"%@\", \"%@\")",
                                   _lemail.text, _totalScore.text];
            
//            NSString *insertSQL = [NSString stringWithFormat:
//                                   @"INSERT INTO LATCH (lscore) VALUES (\"%@\")",
//                                    _totalScore.text];
            
            const char *insert_stmt = [insertSQL UTF8String];
            sqlite3_prepare_v2(_contactDB, insert_stmt,
                               -1, &statement, NULL);
            if (sqlite3_step(statement) == SQLITE_DONE)
            {
                NSLog(@"Score added");
                //            _mothername.text = @"";
                //            _motherpob.text = @"";
                //            _emailid.text = @"";
            } else {
                NSLog(@"Failed to add score");
            }
            sqlite3_finalize(statement);
            sqlite3_close(_contactDB);
        }
    }}

@end
