//
//  main.m
//  W1D2 - ContactList
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		//Variables
		InputCollector *input = [[InputCollector alloc] init];
		BOOL exit = NO;
		
		while(!exit){
			NSString *result = [input inputForPrompt:@"What would you like to do?\n"
																"new - Create new contact\n"
																"list - List all contacts\n"
																"quit - Exit application\n"];
			if([result containsString:@"quit"]){
				exit = YES;
			}
			else if([result containsString:@"new"]){
				
			}
			else if([result containsString:@"list"]){
				
			}
			else{
				printf("Please give a valid option");
			}
			
		}
	}
    return 0;
}
