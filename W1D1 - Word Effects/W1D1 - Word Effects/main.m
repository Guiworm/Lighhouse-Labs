//
//  main.m
//  W1D1 - Word Effects
//
//  Created by Dylan McCrindle on 2016-10-31.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>

//Function to change the String
NSString *ChangeString() {
	
	//Variables
	char newChars[255];
	
	//Get a string
	printf("Type a string: ");
	fgets(newChars, 255, stdin);
	
	//Print the Char array
	printf("You typed: %s", newChars);
	
	//Convert it to an object
	NSString *newString = [NSString stringWithUTF8String:newChars];

	return newString;
}



int main(int argc, const char * argv[]) {
	//Variables
	char option;
	NSString *inputString;
	BOOL keepGoing = YES;
	
	//Get a new String
	inputString = ChangeString();
	
	//Loop it
	do{
		printf("What do you want to do with the string?:\n"
			   "1. Uppercase\n"
			   "2. Lowercase\n"
			   "3. Numberize\n"
			   "4. Canadianize\n"
			   "5. Respond\n"
			   "6. De-Space\n"
			   "7. Change the String\n"
			   "0. Quit\n");
		
		//get the user choice
		option = getchar();
		//remove the newline character from the enter keypress
		getchar();
		
		//Show the String before changing it
		NSLog(@"Input was: %@", inputString);
		
		switch (option) {
			//Make it Uppercase
			case '1':
				inputString = inputString.uppercaseString;
				break;
			
//			//Make it Lowercase
//			case '2':
//				<#statements#>
//				break;
//			
//			//Numberize it
//			case '3':
//				<#statements#>
//				break;
//			
//			//Canadianize it
//			case '4':
//				<#statements#>
//				break;
//				
//			//Respond with multiple things depending on punctuation
//			case '5':
//				<#statements#>
//				break;
//			
//			//Replace spaces with dashes
//			case '6':
//				<#statements#>
//				break;
			
			//Change the String
			case '7':
				inputString = ChangeString();
				break;
				
			//Quit the program
			case '0':
				keepGoing = NO;
				break;
			
			//Re-loop if its not a valid command
			default:
				printf("Please choose a valid option\n");
				break;
		}
	
		//Show the String after changing it
		NSLog(@"Output is: %@", inputString);
	//Check if repeating
	}while (keepGoing);
	
    return 0;
}
