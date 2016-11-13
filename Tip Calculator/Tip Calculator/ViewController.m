//
//  ViewController.m
//  Tip Calculator
//
//  Created by Dylan McCrindle on 2016-11-11.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *percentage;

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipOutput;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.billAmountTextField.delegate = self;

}

- (IBAction)calculateTip:(UIButton *)sender {
	
	if([self.percentage.text isEqualToString:@""]){
		self.percentage.text = [NSString stringWithFormat:@"15"];
	}
	
	CGFloat tip = [self.billAmountTextField.text integerValue] * ([self.percentage.text floatValue]/100);
	
	self.tipOutput.text = [NSString stringWithFormat:@"A %@%% tip should be $%.2f", self.percentage.text,tip];

}

//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//	NSString *currentText = textField.text;
//	NSString *newText = [currentText stringByReplacingCharactersInRange:range withString:string];
//	self.tipOutput.text = [NSString stringWithFormat:@"You typed: %@", newText];
//	
//	return YES;
//}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
	[textField resignFirstResponder];
	return NO;
}


@end
