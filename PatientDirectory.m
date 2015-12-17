//
//  PatientDirectory.m
//  BreastFeedingApplication
//
//  Created by Siruvolu, Sai Anil on 12/16/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import "PatientDirectory.h"
#import "Patient.h"

static NSString *patientFileName = @"Patient.data";

@interface PatientDirectory ()
@property NSMutableArray *patientDisplay;
@end

@implementation PatientDirectory
- (id)init
{
    self = [super init];
    if (self) {
        self.patientDisplay = [NSMutableArray array];
    }
    return self;
}
+(id)initPatientDirectory
{
    PatientDirectory *PatDir = [[PatientDirectory alloc] init];
    if(PatDir) {
        PatDir.patientDisplay = [NSMutableArray array];
        
        [PatDir loadModelFromFile];
    }
    return PatDir;
}
-(void)replacePatient: (Patient *)Patient atIndex: (NSUInteger)index {
    if (index && index < [self.patientDisplay count]) {
        [self removePatientAtIndex:index];
    }
    [self insertPatient:Patient atIndex:&index];
}
-(void)insertPatient:(Patient *)patient atIndex:(NSUInteger *)index {
    if(index) {
        [self.patientDisplay insertObject:patient atIndex:*index];
    }
    else {
        [self.patientDisplay addObject:patient];
    }
    [self saveModelToFile];
}
-(void)removePatientAtIndex:(NSUInteger)index {
    [self.patientDisplay removeObjectAtIndex:index];
}

-(Patient *)getPatientAtIndex:(NSUInteger)index {
    return [self.patientDisplay objectAtIndex:index];
}
-(NSUInteger)size {
    return [self.patientDisplay count];
}

#pragma mark - managing writing data to/from from a file
- (void)saveModelToFile {
    
    NSURL *url = [self urlForDataFile];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self.patientDisplay];
    [data writeToURL:url atomically:YES];
    
}

- (void)loadModelFromFile {
    //NSURL *url = [self urlForDataFile];
    
    //NSMutableArray *pat =
    NSArray *Pat = [NSKeyedUnarchiver unarchiveObjectWithFile:@"Users/panjwani001/Desktop/Patientname.docx"];
    if(Pat)
    {
        self.patientDisplay = [[NSMutableArray alloc] initWithArray:Pat];
    }
}

#pragma mark - Private Methods
- (NSURL *)urlForDataFile {
    
    NSFileManager *manager = [NSFileManager defaultManager];
    
    NSArray *directories =
    [manager URLsForDirectory:NSDocumentDirectory
                    inDomains:NSUserDomainMask];
    
    NSURL *directory = [directories lastObject];
    
    return [directory URLByAppendingPathComponent:patientFileName];
    
}
-(void)initializeManager {
    NSArray *Pat =
    @[
      // [Patient patientName:@"Jane Austen" patientAge:@"28"],
      
      // more books here
      ];
    self.patientDisplay = [[NSMutableArray alloc] initWithArray:Pat];
}

@end
