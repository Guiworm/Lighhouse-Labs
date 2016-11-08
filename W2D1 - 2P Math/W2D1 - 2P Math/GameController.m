//
//  GameController.m
//  W2D1 - 2P Math
//
//  Created by Dylan McCrindle on 2016-11-07.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "GameController.h"
#import "Player.h"

@implementation GameController

- (instancetype)init
{
	self = [super init];
	if (self) {
		Player *player1 = [Player new];
		Player *player2 = [Player new];

		_players = @[player1, player2];
		_isPlayer2 = NO;
		_gameOver = NO;
		
	}
	return self;
}

-(void)makeQuestion{
	NSInteger leftSide = arc4random_uniform(20)+1;
	NSInteger rightSide = arc4random_uniform(20)+1;

	self.question = [NSString stringWithFormat: @"%ld + %ld", leftSide, rightSide];
	self.answer = leftSide + rightSide;
}

-(void)scoreIt:(NSString *)userInput{
	if(!self.isPlayer2){
		if(self.answer == [userInput integerValue]){
			[[self.players objectAtIndex:0] rightQuestion];
			
		}
		else{
			[[self.players objectAtIndex:0] wrongQuestion];
		}
	}
	else{
		if(self.answer == [userInput integerValue]){
			Player *p2 = [self.players objectAtIndex:1];
			[p2 rightQuestion];
		}
		else{
			[[self.players objectAtIndex:1] wrongQuestion];
		}
	}
}

-(NSString *)getScore{
	return [NSString stringWithFormat:@"Player %d: %ld", self.isPlayer2+1, [[self.players objectAtIndex:self.isPlayer2] score]];
}

-(NSInteger)getLives{
	if([[self.players objectAtIndex:self.isPlayer2] lives] == 0){
		self.gameOver = YES;
	}
	return [[self.players objectAtIndex:self.isPlayer2] lives];
}

@end
