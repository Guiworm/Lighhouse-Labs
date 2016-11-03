//
//  Doctor.h
//  W1D4 - Patient and Doctor
//
//  Created by Dylan McCrindle on 2016-11-03.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Medication.h"

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;
@property NSMutableSet *patientList;

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)spec;
- (BOOL) patientHasHealthCard: (Patient *)patient;
- (void) acceptPatient: (Patient *)patient;
- (Medication *)giveMedication: (Patient *)patient;



@end
