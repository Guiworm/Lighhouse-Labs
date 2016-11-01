//
//  ScoreKeeper.h
//  W1D2 - Maths
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger rightAnswers;
@property NSInteger wrongAnswers;

-(NSString *)score;

@end
