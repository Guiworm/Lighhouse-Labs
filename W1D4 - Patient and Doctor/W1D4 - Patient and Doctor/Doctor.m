//
//  Doctor.m
//  W1D4 - Patient and Doctor
//
//  Created by Dylan McCrindle on 2016-11-03.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)spec
{
	self = [super init];
	if (self) {
		_name = name;
		_specialization = spec;
		_patientList = [NSMutableSet new];
	}
	return self;
}

//Check for a valid healthcard
- (BOOL) patientHasHealthCard: (Patient *)patient{
	return patient.validHealthCard ? YES : NO;
}

//Accept Patient
- (void) acceptPatient: (Patient *)patient{
	[self.patientList addObject:patient];
}
@end
