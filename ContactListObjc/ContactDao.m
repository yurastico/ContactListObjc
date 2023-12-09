//
//  ContactDao.m
//  ContactListObjc
//
//  Created by Yuri Cunha on 09/12/23.
//

#import "ContactDao.h"

@implementation ContactDao

static ContactDao *defaultDao = nil;

-(id) init {
    self = [super init];
    if (self) {
        self.contacts = [NSMutableArray new];
    }
    return self;
}

+(ContactDao *) contactDaoInstance {
    if (!defaultDao) {
        defaultDao = [ContactDao new];
    }
    return defaultDao;
} 

- (void)addContact:(Contact *)contact {
    [self.contacts addObject:contact];
}
- (void)removeContact:(Contact *)contact {
    [self.contacts removeObject:contact];
}

-(NSInteger)total {
    return self.contacts.count;
}

-(Contact *) contactOfIndex:(NSInteger) index {
    return self.contacts[index];
}

@end
