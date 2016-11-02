//
//  main.m
//  W1D2 - Maths
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		BOOL gameOn = YES;
		ScoreKeeper *userScore = [[ScoreKeeper alloc] init];
		QuestionManager *allQuestions = [[QuestionManager alloc] init];
		QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
		
		NSLog(@"Type 'quit' to stop playing");
		
		while(gameOn){
			Question *randQuestion = questionFactory.generateRandomQuestion;
			
			
			NSLog(@"%@", randQuestion.question);
			[allQuestions.questions addObject: randQuestion];
			
			NSString *userAnswer = [InputHandler getInput];
			
			
			if ([userAnswer isEqualToString:@"quit"]) {
				gameOn = NO;
			}
			else if(randQuestion.answer == [userAnswer intValue]){
				NSLog(@"Right!");
				userScore.rightAnswers++;
				NSLog(@"%@",userScore.score);
			}
			else{
				NSLog(@"Wrong!");
				NSLog(@"The answer was: %ld",randQuestion.answer);
				userScore.wrongAnswers++;
				NSLog(@"%@",userScore.score);
			}
			NSLog(@"%@\n\n", allQuestions.timeOutput);

			
		}
	}
    return 0;
}
