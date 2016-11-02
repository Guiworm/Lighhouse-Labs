//
//  QuestionFactory.h
//  W1D2 - Maths
//
//  Created by Dylan McCrindle on 2016-11-02.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property NSArray* questionType;

-(Question *)generateRandomQuestion;

@end
