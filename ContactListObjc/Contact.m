//
//  Contact.m
//  ContactListObjc
//
//  Created by Yuri Cunha on 07/12/23.
//

#import "Contact.h"

@implementation Contact

- (NSString *)description {
    NSString *data = [NSString stringWithFormat: @"Name: %@ Address: %@ E-mail: %@ Website: %@ Phone: %@ ",self.name,self.address,self.email,self.website,self.phone];
    return data;
}

@end
