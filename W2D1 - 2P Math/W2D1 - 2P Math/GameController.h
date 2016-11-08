//
//  GameController.h
//  W2D1 - 2P Math
//
//  Created by Dylan McCrindle on 2016-11-07.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property NSString *question;
@property NSInteger answer;
@property NSArray *players;
@property BOOL isPlayer2;

-(void)scoreIt:(NSString *)userInput;
-(void)makeQuestion;
-(NSString *)getScore;

@end

