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
		
		
	    NSLog(@"D1: %ld", [d1 randomize]);
		NSLog(@"D2: %ld", [d2 randomize]);
		NSLog(@"D3: %ld", [d3 randomize]);
		NSLog(@"D4: %ld", [d4 randomize]);
		NSLog(@"D5: %ld", [d5 randomize]);
		NSLog(@"D6: %ld", [d6 randomize]);
		
	}
    return 0;
}
