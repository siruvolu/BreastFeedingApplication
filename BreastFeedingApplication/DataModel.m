//
//  DataModel.m
//  BreastFeeding
//

//
#import "DataModel.h"

#define DOCPATH [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"]
#define DB_VERSION 1.0
static DataModel *sharedDataModel;
@implementation DataModel

- (id)init{
    self = [super init];
    if(self)
    {
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        double version = [[userDefaults objectForKey:@"DB_VERSION"] doubleValue];
        NSString *dbPath = [DOCPATH stringByAppendingPathComponent:@"bfeed.db"];
        BOOL isCreateDB = YES;
        if([[NSFileManager defaultManager] fileExistsAtPath:dbPath]) isCreateDB = NO;
        if (version !=0 && version < DB_VERSION && isCreateDB==NO)
        {
            NSString *str= dbPath;
            NSError *error;
            BOOL success = [[NSFileManager defaultManager] removeItemAtPath:str error:&error];
            if (!success) {
                NSLog(@"Error removing file at path: %@", error.localizedDescription);
            }
            else
            {
                NSLog(@"File removed  at path: %@", error.localizedDescription);
            }
            isCreateDB = YES;
        }

        if(isCreateDB)
        {
            [userDefaults setObject:[NSString stringWithFormat:@"%f",DB_VERSION] forKey:@"DB_VERSION"];
            [userDefaults synchronize];
            NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"bfeed" ofType:@"sqlite"];
            NSData *mainData = [NSData dataWithContentsOfFile:bundlePath];
            [mainData writeToFile:dbPath atomically:YES];
        }
        
        db      = [FMDatabase databaseWithPath:dbPath] ;
        if (![db open]) {
            NSLog(@"Could not open it");
        }
        
    }
    return self;
}
-(id)fmDataQueue
{
    return [FMDatabaseQueue databaseQueueWithPath:[DOCPATH stringByAppendingPathComponent:@"bfeed.db"]];
}
/**
 * Returns the sigleton instance of DataModel Class.
 * 
 * @param otherObject Syncdata object on which it should be compared
 */
+(DataModel *)sharedModel
{
    if (!sharedDataModel) {
        sharedDataModel = [[DataModel alloc] init];
    }
    return sharedDataModel;
}


-(void) beginTransaction
{
    NSString *sql = @"BEGIN;";
    [db executeQuery:sql];
}
-(void) endTransaction
{
    NSString *sql = @"COMMIT;";
    [db executeQuery:sql];
}

/**
 * This method is used to insert feed
 *
 * @param date
 * @param timeStamp
 * @param time
 * @param status
 * @param duration
 * @param type
 * @return void
 */
- (void)insertFeed:(NSString *)date timeStamp:(NSString *)timeStamp time:(NSString *)time duration:(int)duration type:(int)type
{
  
        [db executeUpdate:[NSString stringWithFormat:@"insert into feed_history (timestamp,date,feed_time,duration,type) values('%@','%@','%@',%d,%d)",timeStamp,date,time,duration,type]];
        
  
}




/**
 * This method is used get all the feed for given date
 *
 * @param date
 * @return NSMutableArray of Syncdata objects (trips)
 */
-(NSMutableArray *)getTodayFeed:(NSString *)date
{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    FMResultSet *rs = [db executeQuery:[NSString stringWithFormat:@"select * from feed_history where date = '%@'",date]];
    NSLog(@"%@",[NSString stringWithFormat:@"select * from feed_history where date = '%@'",date]);
            while ([rs next])
            {
                Syncdata *temp = [[Syncdata alloc] init];
                [temp setFeedIndex:[rs intForColumn:@"feed_id"]];
                [temp setFeedDate:[rs stringForColumn:@"date"]];
                [temp setFeedTime:[rs stringForColumn:@"feed_time"]];
                [temp setFeedTimeStamp:[rs stringForColumn:@"timestamp"]];
                [temp setFeedType:[rs intForColumn:@"type"]];
                [temp setDuration:[rs intForColumn:@"duration"]];
                [result addObject:temp];
               
            }
    
    return result;
}






#pragma mark - util methods
/**
 * This method is used to get the string with escaped ' which used to insert in SQL query 
 *
 *
 * @return NSString escaped string
 */
-(NSString *)getEscapeString:(NSString *)str
{
    if (![str isKindOfClass:[NSNull class]])
    {
        str = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        str = [str stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
    }
    else
    {
        return @"";
    }
    return str;
}
@end
