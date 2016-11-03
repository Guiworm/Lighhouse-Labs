//
//  Patient.m
//  W1D4 - Patient and Doctor
//
//  Created by Dylan McCrindle on 2016-11-03.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(int)age
{
	self = [super init];
	if (self) {
		_name = name;
		_age = age;
		_validHealthCard = YES;
		_symptom = @"none";
	}
	return self;
}

- (BOOL) goToDoctor:(Doctor *)doc {
	if([doc patientHasHealthCard:self]){
		[doc acceptPatient:self];
		return YES;
	}
	return NO;
}

- (Medication *) requestMedication:(Doctor *) doc{
	return [doc giveMedication:self];
}

@end
