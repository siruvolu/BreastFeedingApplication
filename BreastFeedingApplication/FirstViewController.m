//
//  FirstViewController.m
//  BreastFeedingApplication
//
//  Created by Kancharla, Soumya on 16/11/15.
//  Copyright © 2015 Kancharla, Soumya. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
int timeSec = 0;
NSTimer *timer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    dataModal  = [DataModel sharedModel];
    [self refreshFeedhistory];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)leftClicked:(id)sender
{
    if([leftButton tag]==0)
    {
        [rightButton setEnabled:NO];
        [leftButton setTitle:@"Stop Feeding" forState:UIControlStateNormal];
        [leftButton setTag:1];
        [self StartTimer];
    }
    else{
        [rightButton setEnabled:YES];
        [leftButton setTitle:@"Left" forState:UIControlStateNormal];
        [leftButton setTag:0];
        [self StopTimer];
        NSDate *c = [NSDate date];
        NSDateFormatter *df = [[NSDateFormatter alloc] init];
        [df setDateFormat:@"yyyy-MM-dd"];
        NSDateFormatter *tf = [[NSDateFormatter alloc] init];
        [tf setDateFormat:@"hh:mm:ss a"];
//        /  hh:mm:ss a
        
        [dataModal insertFeed:[df stringFromDate:c] timeStamp:[NSString stringWithFormat:@"%f",[c timeIntervalSince1970]] time:[tf stringFromDate:c] duration:timeSec type:0];
         timeSec =0;
        [self refreshFeedhistory];
    }
  
}

-(IBAction)rightClicked:(id)sender
{
    if([rightButton tag]==0)
    {
        [leftButton setEnabled:NO];
        [rightButton setTitle:@"Stop Feeding" forState:UIControlStateNormal];
        [rightButton setTag:1];
         [self StartTimer];
    }
    else{
        [leftButton setEnabled:YES];
        [rightButton setTitle:@"Right" forState:UIControlStateNormal];
        [rightButton setTag:0];
        [self StopTimer];
        NSDate *c = [NSDate date];
        NSDateFormatter *df = [[NSDateFormatter alloc] init];
        [df setDateFormat:@"yyyy-MM-dd"];
        NSDateFormatter *tf = [[NSDateFormatter alloc] init];
        [tf setDateFormat:@"hh:mm:ss a"];
        //        /  hh:mm:ss a
        
        [dataModal insertFeed:[df stringFromDate:c] timeStamp:[NSString stringWithFormat:@"%f",[c timeIntervalSince1970]] time:[tf stringFromDate:c] duration:timeSec type:1];
        timeSec =0;
        [self refreshFeedhistory];
    }
}
-(void)refreshFeedhistory
{
    NSDate *c = [NSDate date];
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy-MM-dd"];
    
    feedRecords = [dataModal getTodayFeed:[df stringFromDate:c]];
    NSLog(@"%lu",(unsigned long)[feedRecords count]);
    [sessionTable reloadData];
}
//Call This to Start timer, will tick every second
-(void) StartTimer
{
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerTick:) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
}

//Event called every time the NSTimer ticks.
- (void)timerTick:(NSTimer *)timer
{
    timeSec++;
    NSString* timeNow = [NSString stringWithFormat:@"Feeding Time %02d:%02d", timeSec/60, timeSec%60];
    //Display on your label
    //[timeLabel setStringValue:timeNow];
    timerLabel.text= timeNow;
    
}
#pragma mark tableDelegates
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [feedRecords count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"feedrecordCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier];
    }
    
    
    Syncdata *data = [feedRecords objectAtIndex:indexPath.row];
    
    if(data.feedType)
    {
        cell.textLabel.text =@"Feeded On Right Breast" ;
    }
    else
        cell.textLabel.text =@"Feeded On Left Breast" ;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Duration: %d sec on %@ %@",data.duration,data.feedDate,data.feedTime];
    
    UIView *separatorView = [[UIView alloc] initWithFrame:CGRectMake(0, 59, sessionTable.frame.size.width, 1)];
    separatorView.layer.borderColor = [UIColor grayColor].CGColor;
    separatorView.layer.borderWidth = 1.0;
    [cell.contentView addSubview:separatorView];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    return 60.0;
}//Call this to stop the timer event(could use as a 'Pause' or 'Reset')


- (void) StopTimer
{
    [timer invalidate];
    timerLabel.text= @"00:00";
}
@end
