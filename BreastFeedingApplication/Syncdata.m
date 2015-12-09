//
//  Syncdata.m
//  BreastFeeding
//
//  Created by ****** on 21/05/13.
//  Copyright (c) 2015 ****. All rights reserved.
//

#import "Syncdata.h"

@implementation Syncdata
@synthesize feedIndex;
@synthesize feedDate;
@synthesize feedTime;
@synthesize feedTimeStamp;
@synthesize feedType;

/**
 * Compares the appointment_Date of two Syncdata objects and returns  NSComparisonResult
 * 
 *
 * @param otherObject Syncdata object on which it should be compared
 * @return NSComparisonResult
 */

//- (NSComparisonResult)dateCompare:(Syncdata *)otherObject
//{
//    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//    [formatter setDateFormat:@"MM/dd/yyyy h:mm a"];
//    NSDate *date1,*date2;
//    date1 = [formatter dateFromString:[NSString stringWithFormat:@"%@ %@",self.feedDate,self.feedTime]];
//    date2 = [formatter dateFromString:[NSString stringWithFormat:@"%@ %@",otherObject.feedDate,otherObject.feedTime]];
//    
//    return [date1 compare:date2];
//}

@end
