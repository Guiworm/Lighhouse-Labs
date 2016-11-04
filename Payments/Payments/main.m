//
//  main.m
//  Payments
//
//  Created by Dylan McCrindle on 2016-11-04.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"


int main(int argc, const char * argv[]) {
	@autoreleasepool {
		//Variables
		char userChoiceIn;
		NSInteger price = arc4random_uniform(899) + 101;
		
		
		NSLog(@"Thank you for shopping at Acme.com\n");
		NSLog(@"Your total today is $%ld\n", price);
		NSLog(@"Please select your payment method:\n"
			   "1: Paypal\n"
			   "2: Stripe\n"
			   "3: Amazon\n"
			   "4: ApplePay\n");
		
		//get user input
		userChoiceIn = getchar();
		getchar();
		
		//convert it to an int
		int userChoice = userChoiceIn - '0';
		
		//Create a payment gateway
		PaymentGateway *payment = [[PaymentGateway alloc] init];
		
		id<PaymentDelegate> paymentType;
		
		//Create a payment service to delegate to
		switch (userChoice) {
				//Paypal
			case 1:{
				paymentType = [[PaypalPaymentService alloc] init];
				payment.payDelegate = paymentType;
				break;
			}
				//Stripe
			case 2:{
				paymentType = [[StripePaymentService alloc] init];
				payment.payDelegate = paymentType;
				break;
			}
				//Amazon
			case 3:{
				paymentType = [[AmazonPaymentService alloc] init];
				payment.payDelegate = paymentType;
				break;
			}
				//ApplePay
			case 4:{
				paymentType = [[ApplePaymentService alloc] init];
				payment.payDelegate = paymentType;
				break;
			}
		}
		
		
		
		[payment processPaymentAmount:price];
		
		
	}
    return 0;
}
