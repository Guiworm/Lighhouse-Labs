//
//  main.m
//  W1D2 - ContactList
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"
#import "Contact.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		//Variables
		InputCollector *input = [[InputCollector alloc] init];
		ContactList *allContacts = [[ContactList alloc] init];
		
		BOOL exit = NO;
		
		while(!exit){
			NSString *menuChoice = [input inputForPrompt:@"What would you like to do?\n"
													"new - Create new contact\n"
													"list - List all contacts\n"
													"quit - Exit application\n"];
			if([menuChoice containsString:@"quit"]){
				exit = YES;
			}
			else if([menuChoice containsString:@"new"]){
				Contact *newContact = [[Contact alloc] init];
				newContact.name = [input inputForPrompt:@"Enter a Name:"];
				newContact.email = [input inputForPrompt:@"Enter an Email:"];
				[allContacts addContact: newContact];
			}
			else if([menuChoice containsString:@"list"]){
				int i = 0;
				for (Contact *item in allContacts.allContactsList) {
					i++;
					NSLog(@"%d: %@", i, item.name);
				}
				printf("\n");
			}
			else{
				printf("Please give a valid option");
			}
			
		}
	}
    return 0;
}
