//
//  Medication.h
//  W1D4 - Patient and Doctor
//
//  Created by Dylan McCrindle on 2016-11-03.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Medication : NSObject

@property NSString* name;
@property int dosage;

- (instancetype)initWithName:(NSString *)name andDosage:(int)dose;


@end
