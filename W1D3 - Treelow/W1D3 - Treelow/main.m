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
		
		while(!exit){
			printf("\nWhat would you like to do?\n"
					"roll - roll all the dice\n"
				   	"reset - reset all dice holds\n"
				   "unhold - reset all dice holds\n"
					"quit - Exit application\n");
			
			//get user input and convert it to an object
			fgets(userInput, 255, stdin);
			NSString *userText = [NSString stringWithCString:userInput
													encoding:NSUTF8StringEncoding];
		
			//re-roll all the dice
			if([userText containsString: @"roll"]){
				[allDice roll];
				
				NSLog(@"Which do you want to hold/unhold at which indices(Separate by spaces)?\n");
				fgets(userInput, 255, stdin);
				//convert chars to NSString
				userText = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
				//strip newline and leading whitespace
				userText = [userText stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
				//separate numbers by space
				NSArray *userHold = [userText componentsSeparatedByString:@" "];
				
				for(NSString *item in userHold){
					[allDice holdDie: [item integerValue]];
				}

			}
			
			//Reset Dice
			if([userText containsString:@"unhold"]){
				NSLog(@"Which do you want to unhold at which indices(Separate by spaces)?\n");
				fgets(userInput, 255, stdin);
				//convert chars to NSString
				userText = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
				//strip newline and leading whitespace
				userText = [userText stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
				//separate numbers by space
				NSArray *userHold = [userText componentsSeparatedByString:@" "];
				
				for(NSString *item in userHold){
					[allDice holdDie: [item integerValue]];
				}
			}
			
			//Reset Dice
			if([userText containsString:@"reset"]){
				[allDice reset];
			}
			
			//Quit
			if([userText containsString:@"quit"]){
					exit = YES;
			}
				
		}
		
	}
    return 0;
}
