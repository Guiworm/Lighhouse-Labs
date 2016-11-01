//
//  InputHandler.m
//  W1D2 - Maths
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)getInput{
	
	char userInput[255];
	fgets(userInput, 255, stdin);
	
	NSString *userAnswer = [NSString stringWithCString:userInput
											  encoding:NSUTF8StringEncoding];
	
	userAnswer = [userAnswer stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
	
	return userAnswer;
	
}

@end
