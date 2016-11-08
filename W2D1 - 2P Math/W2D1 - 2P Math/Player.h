//
//  Player.h
//  W2D1 - 2P Math
//
//  Created by Dylan McCrindle on 2016-11-07.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger score;
@property NSInteger lives;

-(void)rightQuestion;
-(void)wrongQuestion;


@end


