//
//  AdditionQuestion.m
//  W1D2 - Maths
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
	self = [super init];
	if (self) {
		NSInteger rand1 = arc4random_uniform(90) + 10;
		NSInteger rand2 = arc4random_uniform(90) + 10;
		_question = [NSString stringWithFormat:@"%ld + %ld?", (long)rand1, (long)rand2];
		_answer = rand1 +rand2;
	}
	return self;
}

@end
