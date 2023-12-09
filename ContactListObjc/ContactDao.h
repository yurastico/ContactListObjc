//
//  ContactDao.h
//  ContactListObjc
//
//  Created by Yuri Cunha on 09/12/23.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactDao : NSObject

@property NSMutableArray *contacts;
- (void) addContact: (Contact *) contact;
- (NSInteger) total;
-(Contact *) contactOfIndex:(NSInteger) index;
-(NSInteger) indexOfContact:(Contact *) contact;
+(ContactDao *) contactDaoInstance;
-(void) removeContact: (Contact *) contact;

@end

NS_ASSUME_NONNULL_END
