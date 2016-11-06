//
//  Player.m
//  Snakes and Ladders
//
//  Created by Dylan McCrindle on 2016-11-05.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
	self = [super init];
	if (self) {
		_currentSpace = 0;
		_gameOver = NO;
		_gameLogic = @{@(4):@(14),
					   @(9):@(31),
					   [NSNumber numberWithInt:17]:[NSNumber numberWithInt:7],
					   [NSNumber numberWithInt:20]:[NSNumber numberWithInt:38],
					   [NSNumber numberWithInt:28]:[NSNumber numberWithInt:84],
					   [NSNumber numberWithInt:40]:[NSNumber numberWithInt:59],
					   [NSNumber numberWithInt:51]:[NSNumber numberWithInt:61],
					   [NSNumber numberWithInt:63]:[NSNumber numberWithInt:81],
					   [NSNumber numberWithInt:64]:[NSNumber numberWithInt:60],
					   [NSNumber numberWithInt:89]:[NSNumber numberWithInt:26],
					   [NSNumber numberWithInt:95]:[NSNumber numberWithInt:75],
					   [NSNumber numberWithInt:99]:[NSNumber numberWithInt:78]
					   };
	}
	return self;
}

-(void) roll{
	
	
	NSInteger dieRoll = arc4random_uniform(6)+1;
	NSLog(@"You rolled a %ld", dieRoll);

	if ([self.gameLogic objectForKey: @(self.currentSpace + dieRoll)] != nil){
		NSInteger goTo =[[self.gameLogic objectForKey:@(self.currentSpace + dieRoll)] integerValue];
		if (goTo > self.currentSpace) {
			NSLog(@"Ladder! You jump from %ld to %ld", self.currentSpace+dieRoll, goTo);
		}
		else{
			NSLog(@"Snake! Slide down from %ld to %ld", self.currentSpace+dieRoll, goTo);
		}
		self.currentSpace = goTo;
	}
	
	else{
		self.currentSpace += dieRoll;

		if(self.currentSpace >= 100){
			self.gameOver = YES;
		}
		else{
			NSLog(@"You are on space %ld", self.currentSpace);
		}
	}

	
}

@end
