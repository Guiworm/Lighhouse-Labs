//
//  ViewController.m
//  W2D3 - EvilLair
//
//  Created by Dylan McCrindle on 2016-11-09.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	UIBarButtonItem *resetButton = [[UIBarButtonItem alloc] initWithTitle:@"Reset" style:UIBarButtonItemStylePlain target:self action:@selector(gotoFront)];
	self.navigationItem.rightBarButtonItem = resetButton;

}

-(void) gotoFront{
	[self.navigationController popToRootViewControllerAnimated:YES];
}

@end
