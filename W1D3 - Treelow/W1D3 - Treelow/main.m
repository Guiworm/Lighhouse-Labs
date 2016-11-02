//
//  main.m
//  W1D3 - Treelow
//
//  Created by Dylan McCrindle on 2016-11-02.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		//Variables
		char userInput[255];
		BOOL exit = NO;
		GameController *allDice = [[GameController alloc] init];
		NSArray *dicePics = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];

		
		while(!exit){
			printf("\nWhat would you like to do?\n"
					"roll - roll all the dice\n"
					"hold - hold the dice\n"
					"quit - Exit application\n");
			
			//get user input and convert it to an object
			fgets(userInput, 255, stdin);
			NSString *userText = [NSString stringWithCString:userInput
													encoding:NSUTF8StringEncoding];
		
			//re-roll all the dice
			if([userText containsString: @"roll"]){
				for (int i = 0; i < 5; i++) {
					if([dicePics objectAtIndex:[[allDice.gameDice objectAtIndex:i] held]] == NO){
						NSLog(@"%@", [dicePics objectAtIndex:[[allDice.gameDice objectAtIndex:i] randomize]-1]);
					}
					else{
						NSLog(@"[%@]", [dicePics objectAtIndex:[[allDice.gameDice objectAtIndex:i] randomize]-1]);
					}
				}
			}
			
			//Hold dice
			if([userText containsString: @"hold"]){
				Dice diceObject = [allDice.gameDice objectAtIndex:0];
				diceObject.holdDie:0;
			}
			
			//Quit
			if([userText containsString:@"quit"]){
					exit = YES;
			}
				
		}
		
	}
    return 0;
}
