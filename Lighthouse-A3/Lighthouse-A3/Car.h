//
//  Car.h
//  Lighthouse-A3
//
//  Created by Dylan McCrindle on 2016-09-22.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject{
	NSString *model;
}
@property (nonatomic, retain) NSString *model;

- (void) drive;
- (id) initWithModel:(NSString *) model;

@end
