//
//  ContactList.m
//  W1D2 - ContactList
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "ContactList.h"


@implementation ContactList

- (instancetype)init
{
	self = [super init];
	if (self) {
		_allContactsList = [NSMutableArray new];
	}
	return self;
}

-(void)addContact:(Contact *)newContact{
	[self.allContactsList addObject:newContact];
}



@end
