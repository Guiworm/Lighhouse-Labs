//
//  main.m
//  W1D2 - Maths
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		char userInput[255];
		BOOL gameOn = YES;
		
		NSLog(@"Type 'quit' to stop playing");
		
		while(gameOn){
			AdditionQuestion *randQuestion = [[AdditionQuestion alloc] init];
			NSLog(@"%@", randQuestion.question);
			fgets(userInput, 255, stdin);
			
			NSString *userAnswer = [NSString stringWithCString:userInput
													  encoding:NSUTF8StringEncoding];
			
			userAnswer = [userAnswer stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
			
			if ([userAnswer isEqualToString:@"quit"]) {
				gameOn = NO;
			}
			else if(randQuestion.answer == [userAnswer intValue]){
				NSLog(@"Right!");
			}
			else{
				NSLog(@"Wrong!");
				NSLog(@"The answer was: %ld",randQuestion.answer);
			}
			
		}
	}
    return 0;
}
