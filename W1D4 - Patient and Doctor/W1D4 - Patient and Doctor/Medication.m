//
//  Medication.m
//  W1D4 - Patient and Doctor
//
//  Created by Dylan McCrindle on 2016-11-03.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "Medication.h"

@implementation Medication

- (instancetype)initWithName:(NSString *)name andDosage:(int)dose
{
	self = [super init];
	if (self) {
		_name = name;
		_dosage = dose;
	}
	return self;
}

@end
