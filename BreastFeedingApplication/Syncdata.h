//
//  Syncdata.h
//  BreastFeeding
//
//  Created by ****** on 21/05/13.
//  Copyright (c) 2015 ****. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Syncdata : NSObject
@property (nonatomic) int feedIndex;
@property ( nonatomic) int duration;
@property ( nonatomic) int feedType;
@property (strong, nonatomic) NSString   *feedDate,*feedTime,*feedTimeStamp;
@end
