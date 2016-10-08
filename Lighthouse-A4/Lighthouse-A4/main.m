//
//  main.m
//  Lighthouse-A4
//
//  Created by Dylan McCrindle on 2016-10-07.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		//make the array and a base number
		NSArray *numbers = @[@44, @5, @122, @26];
		NSNumber *largest;
		
		for(NSNumber *num in numbers){
			if(num > largest){
				largest = num;
			}
		}
		NSLog(@"The largest number in the array is %@", largest);
	}
    return 0;
}
