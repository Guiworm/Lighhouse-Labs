//
//  StripePaymentService.m
//  Payments
//
//  Created by Dylan McCrindle on 2016-11-04.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void) processPaymentAmount:(NSInteger)payTotal{
	NSLog(@"Stripe processed $%ld", payTotal);
}

-(BOOL) canProcessPayment{
	return arc4random_uniform(2);
}

@end
