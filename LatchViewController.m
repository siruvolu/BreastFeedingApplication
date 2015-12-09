//
//  LatchViewController.m
//  BreastFeedingApplication
//
//  Created by Anil Siruvolu on 12/8/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
//

#import "LatchViewController.h"

@interface LatchViewController (){
    double lScore, aScore, tScore, cScore, hScore, total;
}
@property (weak, nonatomic) IBOutlet UIPickerView *lpick;
@property (weak, nonatomic) IBOutlet UIPickerView *apick;
@property (weak, nonatomic) IBOutlet UIPickerView *tpick;
@property (weak, nonatomic) IBOutlet UIPickerView *cpick;
@property (weak, nonatomic) IBOutlet UIPickerView *hpick;

@property NSArray *lScale, *aScale, *tScale, *cScale, *hScale;

@property (weak, nonatomic) IBOutlet UILabel *totalScore;

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
    self.totalScore.text = [NSString stringWithFormat:@"%.f",total];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.lScale = @[@"Too sleepy or reluctant, No latch obtained",@"Repeated attempts Must hold nipple in mouth Must stimulate to suck",@"Grasps breast, Tongue down and forward, Lips flanged,Rhythmic suckling"];
    
    self.aScale = @[@"None",@"A few with stimulation",@"Spontaneous, intermittent (less than 24 hours old) Spontaneous, frequent (greater than 24 hours old)"];
    
    self.tScale = @[@"Inverted",@"Flat",@"Everted (after stimulation)"];
    
    self.cScale = @[@"Engorged Cracked, bleeding, large blisters or bruises Severe discomfort",@"Filling, Small blisters or bruises Mother complains of pinching Mild/moderate discomfort",@"Soft Tender Intact nipples (no damage)"];
    
    self.hScale = @[@"Full assist (staff holds infant at breast)",@"Minimal assist (i.e. elevate head of bed, place pillows) Teach one side, mother does other. Staff help, mother takes over feeding",@"No assist from staff. Mother able to position/hold infant."];
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

@end
