//
//  main.m
//  W1D4 - Patient and Doctor
//
//  Created by Dylan McCrindle on 2016-11-03.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		//Create a doctor and patient
		Doctor *doc = [[Doctor alloc] initWithName:@"Phil"
								 andSpecialization:@"General"];
		Patient *ryan = [[Patient alloc] initWithName:@"Ryan"
											   andAge:25];
		
		//Patient gets sick
		ryan.symptom = @"headache";
		
		//Patients goes to doctor
		[ryan goToDoctor:doc];
		
		//Patient requests meds
		Medication *meds = [ryan requestMedication:doc];
		
		//Print interaction
		[doc printInteraction:ryan withMeds:meds];
		
		//Ryan got sick again
		ryan.symptom = @"fever";
		[ryan goToDoctor:doc];
		meds = [ryan requestMedication:doc];
		
		[Doctor showListOfAvailableMeds:ryan];
		
	}
    return 0;
}
