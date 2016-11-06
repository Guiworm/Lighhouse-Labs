//
//  Player.h
//  Snakes and Ladders
//
//  Created by Dylan McCrindle on 2016-11-05.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger currentSpace;
@property NSDictionary *gameLogic;

-(void) roll;

@end
