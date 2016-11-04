//
//  main.m
//  W1D5 - Pig Latin
//
//  Created by Dylan McCrindle on 2016-11-04.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		NSString *string = @"winternet stuff things items apple";
		
		NSLog(@"%@", [string stringByPigLatinization]);
		
		
	}
    return 0;
}
