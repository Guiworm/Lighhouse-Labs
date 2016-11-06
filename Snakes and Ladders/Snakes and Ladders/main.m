//
//  main.m
//  Snakes and Ladders
//
//  Created by Dylan McCrindle on 2016-11-05.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
int main(int argc, const char * argv[]) {
	@autoreleasepool {
		//Variables
		char userChars[255];
		Player *player1 = [Player new];
		
		NSLog(@"WELCOME TO SNAKES AND LADDERS");
		NSLog(@"Start playing by typing Roll or R");

		while (YES) {
			fgets(userChars, 255, stdin);
			NSString *userInput = [NSString stringWithCString:userChars encoding:NSUTF8StringEncoding];
			
			userInput = [[userInput stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]] lowercaseString];
			
			if([userInput isEqualToString:@"r"] || [userInput isEqualToString:@"roll"]){
				[player1 roll];
			}
		}
	}
    return 0;
}
