//
//  Contact.h
//  ContactListObjc
//
//  Created by Yuri Cunha on 07/12/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property NSString *name;
@property NSString *address;
@property NSString *email;
@property NSString *phone;
@property NSString *website;

@end

NS_ASSUME_NONNULL_END
