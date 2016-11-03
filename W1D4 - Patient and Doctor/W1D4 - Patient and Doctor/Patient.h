//
//  Patient.h
//  W1D4 - Patient and Doctor
//
//  Created by Dylan McCrindle on 2016-11-03.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;
@interface Patient : NSObject


@property NSString *name;
@property int age;
@property BOOL validHealthCard;

- (instancetype)initWithName:(NSString *)name andAge:(int)age;
- (BOOL) goToDoctor:(Doctor *)doc;


@end
