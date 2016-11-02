//
//  QuestionManager.m
//  W1D2 - Maths
//
//  Created by Dylan McCrindle on 2016-11-02.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
	self = [super init];
	if (self) {
		_questions = [NSMutableArray new];
	}
	return self;
}

-(NSString *)timeOutput{
	CGFloat total = 0;
	CGFloat average = 0;
	int i = 0;
	for (AdditionQuestion *item in self.questions) {
		total += [item answerTime];
		i++;
	}
	average = total/i;
	
	return [NSString stringWithFormat: @"total time: %ds, average time: %ds", (int)total, (int)average];
}
@end
