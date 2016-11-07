//
//  main.m
//  Snakes and Ladders
//
//  Created by Dylan McCrindle on 2016-11-05.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "PlayerManager.h"
#import "InputManager.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		//Variables
		PlayerManager *playerManager = [PlayerManager new];
		NSString *userInput;
		BOOL continueGame = YES;
		
		//Keep playing after game over if they want
		do{
			//Check if there are any players and repeat if there isnt
			while ([playerManager.players count] == 0){
				NSLog(@"How many players do you want?");
				userInput = [InputManager userInput];
				[playerManager createPlayers:[userInput integerValue]];
				if([playerManager.players count] == 0){
					NSLog(@"Please add at least 1 player!");
				}
			}

			NSLog(@"WELCOME TO SNAKES AND LADDERS");
			NSLog(@"Start playing by typing Roll or R");

			while (([playerManager.players count] > 0) && continueGame) {
				
				userInput = [InputManager userInput];
				if([userInput isEqualToString: @"quit"]){
					continueGame = NO;
				}

				if([userInput isEqualToString:@"r"] || [userInput isEqualToString:@"roll"]){
					[playerManager roll];
				}
			}
			
			NSLog(@"Restart? (Y/N)");
			userInput = [InputManager userInput];
			([userInput  isEqual: @"y"]) ? (continueGame = YES) : (continueGame = NO);
			
		}while(continueGame);

	}
    return 0;
}
