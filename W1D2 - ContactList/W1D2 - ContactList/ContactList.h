//
//  ContactList.h
//  W1D2 - ContactList
//
//  Created by Dylan McCrindle on 2016-11-01.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray *allContactsList;

-(void)addContact:(Contact *)newContact;
-(void)printContacts;

@end
