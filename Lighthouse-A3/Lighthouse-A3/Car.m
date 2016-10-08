//
//  Car.m
//  Lighthouse-A3
//
//  Created by Dylan McCrindle on 2016-09-22.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize model = _model;


- (void) drive{
	NSLog(@"The model is %@", _model);
}

- (id) initWithModel:(NSString *) model{
	_model = model;
	return self;
}


@end
