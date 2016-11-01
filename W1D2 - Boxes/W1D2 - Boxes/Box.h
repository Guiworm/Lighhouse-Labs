//
//  Box.h
//  W1D2 - Boxes
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property CGFloat width;
@property CGFloat height;
@property CGFloat length;

-(CGFloat)volume;
-(int)insideBox:(Box*)otherBox;
	
@end
