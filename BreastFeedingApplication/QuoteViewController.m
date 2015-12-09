//
//  QuoteViewController.m
//  BreastFeedingApplication
//
//  Created by Anil Siruvolu on 12/8/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
//

#import "QuoteViewController.h"

@interface QuoteViewController ()

@end

@implementation QuoteViewController

NSArray *tableData;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    tableData = [NSArray arrayWithObjects:@"When you feel like quitting: think about why you started.", @"  Life is about making an impact, not making an income. –Kevin Kruse",@"Strive not to be a success, but rather to be of value. –Albert Einstein",@"Life is tough but so are you.",@" You miss 100% of the shots you don’t take. –Wayne Gretzky",@"Stop, breathe. Cry if you must.",@"Every strike brings me closer to the next home run. –Babe Ruth",@"We become what we think about. –Earl Nightingale", nil];


}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
     cell.textLabel.numberOfLines = 10;
    return cell;
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
