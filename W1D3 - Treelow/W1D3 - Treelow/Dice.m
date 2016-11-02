//
//  Dice.m
//  W1D3 - Treelow
//
//  Created by Dylan McCrindle on 2016-11-02.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(NSInteger)randomize{
	return self.currentValue = arc4random_uniform(1)+5;
}

@end
