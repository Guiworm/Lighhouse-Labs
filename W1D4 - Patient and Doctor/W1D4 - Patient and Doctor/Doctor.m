//
//  Doctor.m
//  W1D4 - Patient and Doctor
//
//  Created by Dylan McCrindle on 2016-11-03.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

static NSMutableArray *patientMedicationList;

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

- (void) showListOfAvailableMeds: (Patient *)patient{
	for(Medication *item in patientMedicationList){
		NSLog(@"%@!", item.name);
	}
}


//Check for a valid healthcard
- (BOOL) patientHasHealthCard: (Patient *)patient{
	return patient.validHealthCard ? YES : NO;
}

//Accept patient
- (void) acceptPatient: (Patient *)patient{
	[self.patientList addObject:patient];
}

//Print interaction
+ (void) printInteraction: (Patient *) patient withMeds:(Medication *) meds{
	if (![patient.symptom isEqualToString: @"none"]) {
		
		NSLog(@"%@ has a %@ so they recieved %i %@!", patient.name, patient.symptom, meds.dosage, meds.name);
	}
}

//Give patient medication
- (Medication *)giveMedication: (Patient *)patient{
	
	if([self.patientList containsObject:patient]){
		if([patient.symptom isEqualToString: @"coughing"]){
			Medication *coughDrops = [[Medication alloc] initWithName:@"Cough Drops" andDosage:10];
			[patientMedicationList addObject:coughDrops];
			return coughDrops;
		}
		else if([patient.symptom isEqualToString: @"headache"]){
			Medication *ibuprofen = [[Medication alloc] initWithName:@"Ibuprofen" andDosage:2];
			[patientMedicationList addObject:ibuprofen];
			return ibuprofen;
		}
		else if([patient.symptom isEqualToString: @"fever"]){
			Medication *advil = [[Medication alloc] initWithName:@"Advil" andDosage:3];
			[patientMedicationList addObject:advil];
			return advil;
		}
		else{
			Medication *tylenol = [[Medication alloc] initWithName:@"Tylenol" andDosage:5];
			[patientMedicationList addObject:tylenol];
			return tylenol;
		}
	}
	return nil;
}

@end
