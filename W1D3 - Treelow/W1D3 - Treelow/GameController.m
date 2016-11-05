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

		_dicePics = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];

		_gameDice = [NSMutableArray new];
		
		//Add 5 dice to the array of dice
		for (int i = 0; i < 5; i++) {
			[_gameDice addObject: [[Dice alloc] init]];
		}
	}
	
	return self;
}

-(void) holdDie:(NSInteger)holdIt{
	Dice *dieObject = [self.gameDice objectAtIndex:holdIt];
	dieObject.held ? (dieObject.held = NO) : (dieObject.held = YES);
}

-(void) reset{
	for (Dice *die in self.gameDice) {
		die.held = (die.held = NO);
	}
}

-(void) printDice{
	int i = 0;
	for (Dice *die in self.gameDice) {
		if(die.held == NO){
			NSLog(@"%@", [self.dicePics objectAtIndex:die.currentValue-1]);
		}
		else{
			NSLog(@"[%@]", [self.dicePics objectAtIndex:die.currentValue-1]);
		}
		i++;
	}
	[self score];
}

-(void)roll{
	
	for(Dice *die in self.gameDice){
		if(!die.held)
			[die randomize];
	}
	[self printDice];
	
}

-(void) score{
	int score = 0 ;
	for(Dice *die in self.gameDice){
		if(die.currentValue != 3){
			score += die.currentValue;
		}
	}
	NSLog(@"Your Score is %d", score);
}



@end
