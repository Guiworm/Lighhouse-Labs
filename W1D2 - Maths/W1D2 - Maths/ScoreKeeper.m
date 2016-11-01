//
//  ScoreKeeper.m
//  W1D2 - Maths
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString *)score{
	
	NSInteger percentage = (self.rightAnswers / (float)(self.wrongAnswers + self.rightAnswers)) * 100;
	
	return [NSString stringWithFormat:@"score: %ld right, %ld wrong ---- %ld%%", self.rightAnswers, self.wrongAnswers, percentage];
}

@end
