//
//  SecondViewController.m
//  BreastFeedingApplication
//
//  Created by Anil Siruvolu on 12/8/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
//

#import "SecondViewController.h"
#import "LoginViewController.h"
#import "DB.h"
#import "GraphViewController.h"

@interface SecondViewController ()
@property (nonatomic, strong) DB *db;
-(void)loadInfoToEdit;
- (void)saveData;
- (void)loadMother;
@end

@implementation SecondViewController


- (void)viewDidLoad {
    //if ([_struser  isEqualToString:@""] ) {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //NSLog(@"Your data: %@", _struser);
//     self.emailid.text = self.struser;
//    NSLog(@"Your data: %@", self.emailid.text);
    
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
            "CREATE TABLE IF NOT EXISTS MOTHER (ID INTEGER PRIMARY KEY AUTOINCREMENT, MFNAME TEXT, MLNAME TEXT, MAGE TEXT, ADDRESS TEXT, CAGE TEXT, CWEIGHT TEXT, CSEX TEXT, EMAIL TEXT)";
            
            if (sqlite3_exec(_contactDB, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                NSLog(@"Failed to create table");
            }
            sqlite3_close(_contactDB);
        } else {
            NSLog(@"Failed to open/create database");
        }
    }
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Already Saved Details!" message:@"Enter the email to load data" preferredStyle:UIAlertControllerStyleAlert];
    
            UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {}];
    
            [alert addAction:defaultAction];
    
            [self presentViewController:alert animated:YES completion:nil];
    
//    self.mothername.delegate = self;
//    self.motherlast.delegate = self;
//    self.motherdob.delegate = self;
//    self.motherpob.delegate = self;
//    self.childdob.delegate = self;
//    self.childwt.delegate = self ;
//    self.chsex.delegate = self;
//    self.emailid.delegate = self;
//    self.pwd.delegate = self;
    
    
//    self.db = [[DB alloc] initWithDatabaseFilename:@"bfeed.sqlite"];
    
    //}
    //else {
    //[self loadInfoToEdit];
    //}
    
    //            GraphViewController *graphViewController = [[GraphViewController alloc] init];
//            graphViewController.stremail = _emailid.text; // Set the exposed property
//    
//            [self.navigationController pushViewController:graphViewController animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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

- (IBAction)loadbtn:(id)sender {
    
    [self loadMother];
    
    GraphViewController *graphViewController = [[GraphViewController alloc] init];
    graphViewController.stremail = _emailid.text; // Set the exposed property
    
    [self.navigationController pushViewController:graphViewController animated:YES];

}

-(IBAction)submitbtn:(id)sender
{
    
//    NSString *query;
//    
//    query = [NSString stringWithFormat:@"insert into mother_details values(null,'%@','%@','%@','%@','%@','%@','%@','%@','%@',0)", self.mothername.text, self.motherlast.text,self.motherdob.text,self.motherpob.text,self.childdob.text,self.childwt.text,self.chsex.text,self.emailid.text,self.pwd.text];
//    [self.db executeQuery:query];
//    
//    // If the query was successfully executed then pop the view controller.
//    if (self.db.affectedRows != 0) {
//        NSLog(@"Query was executed successfully. Affected rows = %d", self.db.affectedRows);
//    }
//    else{
//        NSLog(@"Could not execute the query.");
//    }
    
    

    
    if([_mothername.text isEqualToString:@""] && [_motherlast.text isEqualToString:@""] && [_motherdob.text isEqualToString:@""] && [_motherpob.text isEqualToString:@""] && [_childdob.text isEqualToString:@""] && [_childwt.text isEqualToString:@""]&& [_chsex.text isEqualToString:@""] && [_emailid.text isEqualToString:@""] && [_pwd.text isEqualToString:@""] && [_reenterpwd.text isEqualToString:@""])
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
//        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Sorry !" message:@"Password does not match" preferredStyle:UIAlertControllerStyleAlert];
//        
//        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {}];
//        
//        
//      
//        [alert addAction:defaultAction];
//   
//        [self presentViewController:alert animated:YES completion:nil];
    }
    
    [self saveData];
    
//                GraphViewController *graphViewController = [[GraphViewController alloc] init];
//                graphViewController.stremail = _emailid.text; // Set the exposed property
//    
//                [self.navigationController pushViewController:graphViewController animated:YES];
    
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

-(void)loadInfoToEdit{
    // Create the query.
    NSString *query = [NSString stringWithFormat:@"select * from mother_details where email=%@", self.struser];
    
    NSLog(@"%@",self.struser);
    
    // Load the relevant data.
    NSArray *results = [[NSArray alloc] initWithArray:[self.db loadDataFromDB:query]];
    
    // Set the loaded data to the textfields.
    self.mothername.text = [[results objectAtIndex:0] objectAtIndex:[self.db.arrColumnNames indexOfObject:@"mfname"]];
    self.motherlast.text = [[results objectAtIndex:0] objectAtIndex:[self.db.arrColumnNames indexOfObject:@"mlname"]];
    self.motherdob.text = [[results objectAtIndex:0] objectAtIndex:[self.db.arrColumnNames indexOfObject:@"mage"]];
    self.motherpob.text = [[results objectAtIndex:0] objectAtIndex:[self.db.arrColumnNames indexOfObject:@"address"]];
    self.childdob.text = [[results objectAtIndex:0] objectAtIndex:[self.db.arrColumnNames indexOfObject:@"cage"]];
    self.childwt.text = [[results objectAtIndex:0] objectAtIndex:[self.db.arrColumnNames indexOfObject:@"cweight"]];
    self.emailid.text = [[results objectAtIndex:0] objectAtIndex:[self.db.arrColumnNames indexOfObject:@"csex"]];
    
}

- (void)saveData{
{
    sqlite3_stmt    *statement;
    const char *dbpath = [_databasePath UTF8String];
    
    if (sqlite3_open(dbpath, &_contactDB) == SQLITE_OK)
    {
        
        NSString *insertSQL = [NSString stringWithFormat:
                               @"INSERT INTO MOTHER (mfname, mlname, mage, address, cage, cweight, csex, email) VALUES (\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\")",
                               _mothername.text, _motherlast.text,_motherdob.text,_motherpob.text,_childdob.text,_childwt.text, _chsex.text,_emailid.text];
        
        const char *insert_stmt = [insertSQL UTF8String];
        sqlite3_prepare_v2(_contactDB, insert_stmt,
                           -1, &statement, NULL);
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
            NSLog(@"Mother added");
//            _mothername.text = @"";
//            _motherpob.text = @"";
//            _emailid.text = @"";
        } else {
            NSLog(@"Failed to add mother");
        }
        sqlite3_finalize(statement);
        sqlite3_close(_contactDB);
    }
}}

- (void)loadMother{
{
    const char *dbpath = [_databasePath UTF8String];
    sqlite3_stmt    *statement;
    
    if (sqlite3_open(dbpath, &_contactDB) == SQLITE_OK)
    {
//        NSString *querySQL = [NSString stringWithFormat:
//                              @"SELECT address, mname FROM mother WHERE name=\"%@\"",
//                              _emailid.text];
        
//        NSString *querySQL = [NSString stringWithFormat:
//                              @"SELECT address, mname FROM mother WHERE email=\"%@\"",
//                                                            _emailid.text];
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT mfname, mlname, mage, address, cage, cweight, csex FROM mother WHERE email=\"%@\"",
                              _emailid.text];
        
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(_contactDB,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            if (sqlite3_step(statement) == SQLITE_ROW)
            {
                NSString *addressField = [[NSString alloc]
                                          initWithUTF8String:
                                          (const char *) sqlite3_column_text(
                                                                             statement, 6)];
                _motherdob.text = addressField;
                NSString *mnameField = [[NSString alloc]
                                        initWithUTF8String:(const char *)
                                        sqlite3_column_text(statement, 0)];
                _mothername.text = mnameField;
                NSString *mlnameField = [[NSString alloc]
                                        initWithUTF8String:(const char *)
                                        sqlite3_column_text(statement, 1)];
                _motherlast.text = mlnameField;
                NSString *mageField = [[NSString alloc]
                                        initWithUTF8String:(const char *)
                                        sqlite3_column_text(statement, 2)];
                _motherdob.text = mageField;
                NSString *cageField = [[NSString alloc]
                                       initWithUTF8String:(const char *)
                                       sqlite3_column_text(statement, 3)];
                _childdob.text = cageField;
                NSString *cweightField = [[NSString alloc]
                                       initWithUTF8String:(const char *)
                                       sqlite3_column_text(statement, 4)];
                
                _childwt.text = cweightField;
                NSString *csexField = [[NSString alloc]
                                          initWithUTF8String:(const char *)
                                          sqlite3_column_text(statement, 5)];
                
                _chsex.text = csexField;
                NSLog(@"Match found");
            } else {
                NSLog(@"Match not found");
//                _address.text = @"";
//                _phone.text = @"";
            }
            sqlite3_finalize(statement);
        }
        sqlite3_close(_contactDB);
    }
}}

@end
