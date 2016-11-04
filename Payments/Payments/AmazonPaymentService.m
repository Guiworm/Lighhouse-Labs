//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Dylan McCrindle on 2016-11-04.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(void) processPaymentAmount:(NSInteger)payTotal{
	NSLog(@"Amazon processed $%ld", payTotal);
}

-(BOOL) canProcessPayment{
	return arc4random_uniform(2);
}

@end
