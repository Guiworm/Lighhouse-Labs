//
//  PlayerManager.m
//  Snakes and Ladders
//
//  Created by Dylan McCrindle on 2016-11-06.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
	self = [super init];
	if (self) {
		_players = [NSMutableArray new];
		_currentIndex = 0;
	}
	return self;
}

-(void) createPlayers:(NSInteger)playerNum{
	
	for (int i = 1; i <= playerNum; i++) {
		Player *newPlayer = [Player new];
		newPlayer.name = [NSString stringWithFormat: @"Player %d",i];
		[self.players addObject:newPlayer];
	}
	
}

-(void) roll{
	[[self.players objectAtIndex:self.currentIndex] roll];
	
	if([[self.players objectAtIndex:self.currentIndex] gameOver]){
		[self.players removeAllObjects];
		NSLog(@"Congratulations! You Win!");
	}
	else{
		self.currentIndex++;
		[self currentPlayer];
	}
}

-(void) currentPlayer{
	self.currentIndex = self.currentIndex % [self.players count];
}

@end
