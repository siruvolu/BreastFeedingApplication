//
//  PatientDirectory.h
//  BreastFeedingApplication
//
//  Created by Siruvolu, Sai Anil on 12/16/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Patient.h"


@interface PatientDirectory : NSObject
+(id) initPatientDirectory;
-(id) init;

-(Patient*)getPatientAtIndex: (NSUInteger)index;
-(void)removePatientAtIndex: (NSUInteger)index;
-(void)replacePatient:(Patient *)Patient atIndex: (NSUInteger) index;
-(void)insertPatient: (Patient *)Patient atIndex: (NSUInteger*) index;
-(NSUInteger)size;

@end