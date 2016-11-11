//
//  ViewController.m
//  Tip Calculator
//
//  Created by Dylan McCrindle on 2016-11-11.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipOutput;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)calculateTip:(UIButton *)sender {
	CGFloat tip = [self.billAmountTextField.text integerValue] * 0.15;
	
	self.tipOutput.text = [NSString stringWithFormat:@"A 15%% tip should be $%.2f", tip];

}


@end
