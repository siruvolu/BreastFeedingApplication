//
//  MasterTableTableViewController.m
//  BreastFeedingApplication
//
//  Created by Siruvolu, Sai Anil on 12/16/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import "MasterTableViewController.h"
#import "DetailViewController.h"
#import "PatientDirectory.h"
#import "docloginViewController.h"
#import "Patient.h"


@interface MasterTableViewController () <DetailViewControllerDelegate>

@property PatientDirectory *patientDisplay;
@end

@implementation MasterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
    self.patientDisplay = [PatientDirectory initPatientDirectory];
    [self loadSampleContent];
}

- (void)viewWillAppear:(BOOL)animated {
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender {
    if (!self.patientDisplay) {
        self.patientDisplay = [PatientDirectory initPatientDirectory];
    }
    DetailViewController *foundDVC = (DetailViewController *)[self.storyboard
                                                              instantiateViewControllerWithIdentifier:@"Edit-Patient"];
    
    if ([foundDVC respondsToSelector:@selector(setDelegate:)]) {
        [foundDVC setDelegate:self];
    }
    [self.navigationController pushViewController:foundDVC animated:YES];
    
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"PatientDetail"]) {
        //NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        //Patient *_patientDisplay = [self.patientDisplay getPatientAtIndex:indexPath.row];
        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
        //[controller setPatientdetail:_patientDisplay];
        [controller setDelegate:self];
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.patientDisplay size];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Patient *patientDisplay = [self.patientDisplay getPatientAtIndex:indexPath.row];
    cell.textLabel.text = patientDisplay.PatientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@, %@", patientDisplay.PatientAge, patientDisplay.LatchScore ];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.patientDisplay removePatientAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

#pragma mark - DetailViewControllerDelegate Methods
- (void)detailControllerSaved:(DetailViewController *)controller {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if
        (!indexPath) {
            
            [self.patientDisplay insertPatient:controller.Patientdetail atIndex:nil];
            [self.navigationController popViewControllerAnimated:YES];
            // it's a modal view
        } else {
            
            // it's a navigation view
            NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
            
            [self.patientDisplay replacePatient:controller.Patientdetail atIndex:indexPath.row];
            [self.navigationController popViewControllerAnimated:YES];
        }
    
    [self.tableView reloadData];
}

- (void)detailControllerCanceled:(DetailViewController *)controller {
    
    if ([self.presentedViewController isEqual:controller]) {
        
        // it's a modal view
        [self dismissViewControllerAnimated:YES
                                 completion:nil];
        
    } else {
        
        // it's a navigation view
        [self.navigationController popViewControllerAnimated:YES];
    }
}


-(void) loadSampleContent {
    /* NSArray *PatDet =
     @[
     [Patient patientName:@"simon" patientAge:@"28" latchScore:@"7"],
     
     ];
     self.patientDisplay = [[NSMutableArray alloc] initWithArray:PatDet];
     
     }*/
}
@end
