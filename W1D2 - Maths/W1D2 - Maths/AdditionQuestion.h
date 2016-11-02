//
//  AdditionQuestion.h
//  W1D2 - Maths
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

-(NSTimeInterval) answerTime;

@end
