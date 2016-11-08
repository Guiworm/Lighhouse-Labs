//
//  Player.m
//  W2D1 - 2P Math
//
//  Created by Dylan McCrindle on 2016-11-07.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
	self = [super init];
	if (self) {
		_score = 0;
		_lives = 3;
	}
	return self;
}

-(void)rightQuestion{
	self.score++;
}

-(void)wrongQuestion{
	self.lives--;
}

@end
