//
//  DataModel.h
//  BreastFeeding
//
//  Created by ****** on 21/05/13.
//  Copyright (c) 2015 ****. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"
#import "Syncdata.h"
#import "sqlite3.h"
@interface DataModel : NSObject{
    FMDatabase *db;
    
}
+(DataModel *)sharedModel;

//login table functions

//Syncdata table functions
-(NSMutableArray *)getTodayFeed:(NSString *)date;
- (void)insertFeed:(NSString *)date timeStamp:(NSString *)timeStamp time:(NSString *)time duration:(int)duration type:(int)type;
@end
