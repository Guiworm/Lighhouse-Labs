//
//  InputCollector.m
//  W1D2 - ContactList
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{
	
	
	NSLog(@"%@",promptString);
	
	char userInput[255];
	fgets(userInput, 255, stdin);
	
	NSString *userText = [NSString stringWithCString:userInput
											encoding:NSUTF8StringEncoding];
	
	return userText;
}


@end
