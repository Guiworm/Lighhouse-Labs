//
//  ViewController.m
//  Bill Splitter
//
//  Created by Dylan McCrindle on 2016-11-12.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)calculateSplitAmount:(UIButton *)sender {
	NSDecimalNumber *total = [NSDecimalNumber decimalNumberWithString:self.textField.text];
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	[numberFormatter setNumberStyle: NSNumberFormatterCurrencyStyle];
	
	NSDecimalNumber *splitby = [[NSDecimalNumber alloc] initWithFloat: self.slider.value];
	
	total = [total decimalNumberByDividingBy: splitby];
	
	self.label.text = [NSString stringWithFormat:@"%@", [numberFormatter stringFromNumber:total]];
}

@end













