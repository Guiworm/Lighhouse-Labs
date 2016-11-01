//
//  main.m
//  W1D2 - Boxes
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {

		Box *box1 = [[Box alloc] init];
		box1.width = 1;
		box1.height = 7;
		box1.length = 2;
		
		Box *box2 = [[Box alloc] init];
		box2.width = 20;
		box2.height = 5;
		box2.length = 4;
		
		
		CGFloat b1Volume = box1.volume;
		CGFloat b2Volume = box2.volume;

		
		NSLog(@"The volume of Box 1 is %f", b1Volume);
		NSLog(@"The volume of Box 2 is %f", b2Volume);
		
		NSLog(@"You can fit %d boxes inside the other box", [box1 insideBox:box2]);
		
	}
    return 0;
}
