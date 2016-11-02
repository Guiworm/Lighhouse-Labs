//
//  QuestionFactory.m
//  W1D2 - Maths
//
//  Created by Dylan McCrindle on 2016-11-02.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
	self = [super init];
	if (self) {
		_questionType = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
	}
	return self;
}

-(Question *)generateRandomQuestion{
	return [[NSClassFromString(self.questionType[arc4random_uniform(4)]) alloc]init];
}

@end
