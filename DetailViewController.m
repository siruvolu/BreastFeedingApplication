//
//  DetailViewController.m
//  BreastFeedingApplication
//
//  Created by Siruvolu, Sai Anil on 12/16/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import "DetailViewController.h"
#import "Patient.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *PatientNameField;
@property (weak, nonatomic) IBOutlet UITextField *PatientAgeField;
@property (weak, nonatomic) IBOutlet UITextField *LatchScoreField;
@end

@implementation DetailViewController


#pragma mark - Managing the detail item

- (void)setPatientdetail:(id)newPatientdetail {
    if (_Patientdetail != newPatientdetail) {
        _Patientdetail = newPatientdetail;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.Patientdetail) {
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

-(void)viewWillAppear:(BOOL)animated {
    if(self.Patientdetail) {
        self.PatientNameField.text = self.Patientdetail.PatientName;
        self.PatientAgeField.text = self.Patientdetail.PatientAge;
        self.LatchScoreField.text = self.Patientdetail.LatchScore;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)SaveSelected:(id)sender {
    self.Patientdetail =
    [Patient patientName: self.PatientNameField.text
              patientAge: self.PatientAgeField.text
              latchScore: self.LatchScoreField.text];
    [self.delegate detailControllerSaved:self];
}
- (IBAction)cancelSelected:(id)sender {
    [self.delegate detailControllerCanceled:self];
}

@end


