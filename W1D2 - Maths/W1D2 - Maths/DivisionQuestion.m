//
//  DivisionQuestion.m
//  W1D2 - Maths
//
//  Created by Dylan McCrindle on 2016-11-02.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
	self = [super init];
	if (self) {
		[self generateQuestion];
	}
	return self;
}

-(void) generateQuestion{
	super.question = [NSString stringWithFormat:@"%ld / %ld?", (long)self.leftValue, (long)self.rightValue];
	super.answer = super.leftValue / super.rightValue;
}

@end
