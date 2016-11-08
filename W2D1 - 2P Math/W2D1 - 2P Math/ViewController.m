//
//  ViewController.m
//  W2D1 - 2P Math
//
//  Created by Dylan McCrindle on 2016-11-07.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "ViewController.h"
#import "GameController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *p2Heart1;
@property (weak, nonatomic) IBOutlet UIImageView *p2Heart2;
@property (weak, nonatomic) IBOutlet UIImageView *p2Heart3;
@property (weak, nonatomic) IBOutlet UIImageView *p1Heart1;
@property (weak, nonatomic) IBOutlet UIImageView *p1Heart2;
@property (weak, nonatomic) IBOutlet UIImageView *p1Heart3;

@property (weak, nonatomic) IBOutlet UILabel *playerOneScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UILabel *gameOverLabel;

@property (nonatomic) IBOutletCollection(UIButton) NSArray* numberButtons;
@property (nonatomic) NSMutableString *userAnswer;

@property (nonatomic) GameController *gameLogic;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[self setup];
}


//- (IBAction)deleteLastNumber:(UIButton *)sender {
//	
//	[self.userAnswer substringToIndex:[self.userAnswer length]];
//	self.answerLabel.text = [NSString stringWithFormat:@"%@", self.userAnswer];
//	[self.answerLabel sizeToFit];
//
//}

- (IBAction)numberPush:(UIButton *)sender {
	NSInteger numIndex = [self.numberButtons indexOfObject:sender];
	[self.userAnswer appendString:[NSString stringWithFormat:@"%ld", (long)numIndex]];
	
	self.answerLabel.text = self.userAnswer;
	[self.answerLabel sizeToFit];
}

-(void)makeQuestion{
	[self.gameLogic makeQuestion];
	self.questionLabel.text = [NSString stringWithFormat:@"Player %d: %@", self.gameLogic.isPlayer2+1, self.gameLogic.question];
	[self.questionLabel sizeToFit];
	[self.userAnswer setString:@""];
	self.answerLabel.text = @"";
}

- (IBAction)enterPush:(UIButton *)sender {
	[self.gameLogic scoreIt:self.userAnswer];

	if(!self.gameLogic.isPlayer2){
		self.playerOneScoreLabel.text = [self.gameLogic getScore];
		[self.playerOneScoreLabel sizeToFit];
	}
	else{
		self.playerTwoScoreLabel.text = [self.gameLogic getScore];
		[self.playerTwoScoreLabel sizeToFit];
	}
	[self.gameLogic getLives];
	if(self.gameLogic.gameOver == YES){
		self.gameOverLabel.hidden = NO;

	}
	
	self.gameLogic.isPlayer2 = !self.gameLogic.isPlayer2;
	[self makeQuestion];
}

-(void) setup{
	self.gameLogic = [GameController new];
	[self makeQuestion];
	self.userAnswer = [NSMutableString new];
	self.gameOverLabel.hidden = YES;

}

@end
