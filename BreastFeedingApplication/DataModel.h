//
//  DataModel.h
//  BreastFeeding
//
//  Created by Anil Siruvolu on 12/8/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
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
