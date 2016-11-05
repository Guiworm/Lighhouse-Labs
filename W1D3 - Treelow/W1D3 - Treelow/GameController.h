//
//  GameController.h
//  W1D3 - Treelow
//
//  Created by Dylan McCrindle on 2016-11-02.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property NSMutableArray *gameDice;
@property NSArray *dicePics;


-(void) holdDie:(NSInteger)holdIt;
-(void) printDice;
-(void) reset;
-(void) roll;
-(void) score;

@end
