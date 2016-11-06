//
//  PlayerManager.h
//  Snakes and Ladders
//
//  Created by Dylan McCrindle on 2016-11-06.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property NSMutableArray *players;
@property NSInteger currentIndex;

-(void) createPlayers:(NSInteger)playerNum;
-(void) currentPlayer;
-(void) roll;


@end
