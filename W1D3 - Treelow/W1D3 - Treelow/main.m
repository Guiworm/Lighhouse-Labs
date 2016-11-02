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
		
		
		
	    NSLog(@"D1: %ld", (long)d1.randomize);
		NSLog(@"D1: %ld", (long)d2.randomize);
		NSLog(@"D1: %ld", (long)d3.randomize);
		NSLog(@"D1: %ld", (long)d4.randomize);
		NSLog(@"D1: %ld", (long)d5.randomize);
		NSLog(@"D1: %ld", (long)d6.randomize);
	}
    return 0;
}
