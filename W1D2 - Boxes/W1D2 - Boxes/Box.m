//
//  Box.m
//  W1D2 - Boxes
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "Box.h"

@implementation Box

-(CGFloat)volume{
	return self.width * self.height * self.length;
}

-(int)insideBox:(Box *)otherBox{
	float thisVolume = self.volume;
	float otherVolume = otherBox.volume;
	int count = 0;
	if(thisVolume >= otherVolume){
		while (thisVolume >= otherVolume) {
			thisVolume -= otherVolume;
			count++;
		}
	}
	else{
		while (thisVolume <= otherVolume) {
			otherVolume -= thisVolume;
			count++;
		}
	}
	return count;
}


@end
