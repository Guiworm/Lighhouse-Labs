//
//  main.m
//  W1D3 - Treelow
//
//  Created by Dylan McCrindle on 2016-11-02.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		//Variables
		Dice *d1 = [[Dice alloc] init];
		Dice *d2 = [[Dice alloc] init];
		Dice *d3 = [[Dice alloc] init];
		Dice *d4 = [[Dice alloc] init];
		Dice *d5 = [[Dice alloc] init];
		Dice *d6 = [[Dice alloc] init];
		char userInput[255];
		BOOL exit = NO;
		
		while(!exit){
			NSLog(@"What would you like to do?\n"
									"roll - roll all the dice\n"
									"quit - Exit application\n");
			
			//get user input and convert it to an object
			fgets(userInput, 255, stdin);
			NSString *userText = [NSString stringWithCString:userInput
													encoding:NSUTF8StringEncoding];
		
			//re-roll all the dice
			if([userText containsString: @"roll"]){
				NSLog(@"D1: %@", [d1.dicePics objectAtIndex:[d1 randomize]-1]);
				NSLog(@"D2: %@", [d2.dicePics objectAtIndex:[d2 randomize]-1]);
				NSLog(@"D3: %@", [d3.dicePics objectAtIndex:[d3 randomize]-1]);
				NSLog(@"D4: %@", [d4.dicePics objectAtIndex:[d4 randomize]-1]);
				NSLog(@"D5: %@", [d5.dicePics objectAtIndex:[d5 randomize]-1]);
				NSLog(@"D6: %@", [d6.dicePics objectAtIndex:[d6 randomize]-1]);
			}
			
			//Quit
			if([userText containsString:@"quit"]){
					exit = YES;
			}
				
		}
		
	}
    return 0;
}
