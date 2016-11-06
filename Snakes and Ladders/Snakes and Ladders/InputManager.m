//
//  InputManager.m
//  Snakes and Ladders
//
//  Created by Dylan McCrindle on 2016-11-06.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "InputManager.h"

@implementation InputManager


+(NSString *)userInput{
	char userChars[255];
	
	fgets(userChars, 255, stdin);
	NSString *userInput = [NSString stringWithCString:userChars encoding:NSUTF8StringEncoding];
	
	return [[userInput stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]] lowercaseString];
}

@end
