//
//  main.m
//  Lighthouse-A3
//
//  Created by Dylan McCrindle on 2016-09-22.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Toyota.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		//Create the car object(s)
		Toyota *toyota = [[Toyota alloc] init];
		Car *nissan = [[Car alloc] initWithModel:@"Rogue"];
		
		//Call drive method(s)
		[toyota drive];
		[nissan drive];
	}
    return 0;
}
