//
//  Patient.m
//  BreastFeedingApplication
//
//  Created by Siruvolu, Sai Anil on 12/16/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import "Patient.h"
//static NSString * const PatientName = @"PatientName";
//static NSString * const  PatientAge= @"PatientAge";

@implementation Patient

-(id) init // Override of default - force use of specialized constructor
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

-(id) initWithName: (NSString*)aName Age:(NSString *)aAge Score:(NSString *)aScore{
    self = [super init];
    if(self) {
        _PatientName = aName;
        _PatientAge = aAge;
        _LatchScore = aScore;
    }
    return self;
}
+ (instancetype) patientName:(NSString *)a patientAge:(NSString *)d latchScore:(NSString *)s
{
    return [[self alloc] initWithName:a Age:d Score:s];
}

#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super init];
    
    if (self) {
        
        _PatientName = [aDecoder decodeObjectForKey:_PatientName];
        _PatientAge = [aDecoder decodeObjectForKey:_PatientAge];
        _LatchScore = [aDecoder decodeObjectForKey:_LatchScore];
        
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeObject:self.PatientName forKey:_PatientName];
    [aCoder encodeObject:self.PatientAge forKey:_PatientAge];
    [aCoder encodeObject:self.LatchScore forKey:_LatchScore];
}


@end
