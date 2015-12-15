//
//  DB.h
//  BreastFeedingApplication
//
//  Created by Anil Siruvolu on 12/13/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DB : NSObject

-(instancetype)initWithDatabaseFilename:(NSString *)dbFilename;

@property (nonatomic, strong) NSMutableArray *arrColumnNames;

@property (nonatomic) int affectedRows;

@property (nonatomic) long long lastInsertedRowID;

-(NSArray *)loadDataFromDB:(NSString *)query;

-(void)executeQuery:(NSString *)query;

@end
