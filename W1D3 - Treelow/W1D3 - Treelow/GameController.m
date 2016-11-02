//
//  GameController.m
//  W1D3 - Treelow
//
//  Created by Dylan McCrindle on 2016-11-02.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
	self = [super init];
	if (self) {
		_gameDice = [NSMutableArray new];
		
		//Add 5 dice to the array of dice
		for (int i = 0; i < 5; i++) {
			[_gameDice addObject: [[Dice alloc] init]];
		}
	}
	
	return self;
}

-(void) holdDie:(NSInteger)holdIt{
	Dice *dieObject = [self.gameDice objectAtIndex:0];
	dieObject.held = YES;
}


@end
