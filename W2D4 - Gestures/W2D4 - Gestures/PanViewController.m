//
//  PanViewController.m
//  W2D4 - Gestures
//
//  Created by Dylan McCrindle on 2016-11-10.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController

- (IBAction)redViewPlanned:(UIPanGestureRecognizer *)sender {
	
//	CGPoint locationInView = [sender locationInView:self.view];
//	sender.view.center = locationInView;
	CGPoint translationInView = [sender translationInView:self.view];
	
	CGPoint oldCenter = sender.view.center;
	CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
	
	sender.view.center = newCenter;
	[sender setTranslation:CGPointZero inView:self.view];

}


@end
