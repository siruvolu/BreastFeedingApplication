//
//  Patient.h
//  BreastFeedingApplication
//
//  Created by Siruvolu, Sai Anil on 12/16/15.
//  Copyright © 2015 Prateek Panjwani. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic, strong, readonly) NSString *PatientName;
@property (nonatomic, strong, readonly) NSString *PatientAge;
@property (nonatomic, strong, readonly) NSString *LatchScore;

-(id) initWithName: (NSString*)aName Age:(NSString *)aAge Score:(NSString *)aScore;
+(instancetype) patientName:(NSString *)a patientAge:(NSString *)d latchScore:(NSString *)S;


@end
