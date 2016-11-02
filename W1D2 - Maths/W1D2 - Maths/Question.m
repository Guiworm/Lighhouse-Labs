//
//  Question.m
//  W1D2 - Maths
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "Question.h"

@implementation Question

-(void) generateQuestion{
	
}


-(NSInteger) answer{
	_endTime = [NSDate date];
	return _answer;
}

- (instancetype)init
{
	self = [super init];
	if (self) {
		_rightValue = arc4random_uniform(90) + 10;
		_leftValue = arc4random_uniform(90) + 10;
		_startTime = [NSDate date];
	}
	return self;
}

-(NSTimeInterval) answerTime{
	return [self.endTime timeIntervalSinceDate: self.startTime];
}

@end
