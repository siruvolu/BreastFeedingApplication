//
//  GraphViewController.m
//  BreastFeedingApplication
//
//  Created by Anil Siruvolu on 12/8/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
//

#import "GraphViewController.h"
#import "LineChart.h"
#import "Color.h"
#import "LatchViewController.h"

@interface GraphViewController ()

@end

@implementation GraphViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //NSArray *viewControllers = [self.tabBarController viewControllers];
    //UITabBarController *myNavController = (UITabBarController *)viewControllers[2];
    
    //self.latchVC = (LatchViewController *) [tabBarController.viewControllers objectAtIndex:1];
    //In our example here, we only have 2 view controllers (A and B)
    //So, index 1 is where controller B resides.
    
   
    
    
    
    [self.view addSubview:[self chart1]];

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Creating the charts

-(LineChart*)chart1 {
    // Generating some dummy data
    NSMutableArray* chartData = [NSMutableArray arrayWithCapacity:10];
    
    for(int i=0;i<10;i++) {
        chartData[i] = [NSNumber numberWithInt:rand() % 100];
    }
    
    // Creating the line chart
    LineChart* lineChart = [[LineChart alloc] initWithFrame:CGRectMake(20, 120, [UIScreen mainScreen].bounds.size.width - 40, 166)];
    
    lineChart.gridStep = 3;
    
    lineChart.labelForIndex = ^(NSUInteger item) {
        return [NSString stringWithFormat:@"%lu",(unsigned long)item];
    };
    
    lineChart.labelForValue = ^(CGFloat value) {
        return [NSString stringWithFormat:@"%.f", value];
    };
    
    [lineChart setChartData:chartData];
    
    return lineChart;
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
