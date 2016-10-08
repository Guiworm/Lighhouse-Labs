//
//  Toyota.m
//  Lighthouse-A3
//
//  Created by Dylan McCrindle on 2016-09-22.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "Toyota.h"

@implementation Toyota

//Replace the init method to make the default Toyota a Prius
- (id) init{
	return [self initWithModel:@"Prius"];
}

@end
