//
//  PaymentGateway.h
//  Payments
//
//  Created by Dylan McCrindle on 2016-11-04.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void) processPaymentAmount:(NSInteger)payTotal;
-(BOOL) canProcessPayment;

@end



@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> payDelegate;

-(void)processPaymentAmount:(NSInteger)payAmount;
-(BOOL) canProcessPayment;

@end
