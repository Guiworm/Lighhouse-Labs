//
//  PaymentGateway.m
//  Payments
//
//  Created by Dylan McCrindle on 2016-11-04.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void) processPaymentAmount:(NSInteger)payAmount{
	
	if (self.canProcessPayment) {
		[self.payDelegate processPaymentAmount:payAmount];
	}
	else{
		NSLog(@"Sorry, we can't process your payment at this time");
	}
	
	
}

-(BOOL) canProcessPayment{
	return [self.payDelegate canProcessPayment];
}


@end
