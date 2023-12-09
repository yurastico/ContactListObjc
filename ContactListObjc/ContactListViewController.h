//
//  ContactListViewController.h
//  ContactListObjc
//
//  Created by Yuri Cunha on 07/12/23.
//

#import <UIKit/UIKit.h>
#import "ContactDao.h"
#import "ViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface ContactListViewController : UITableViewController<FormViewControllerDelegate>

@property ContactDao *dao ;
@property Contact *selectedContact;
@property NSInteger selectedIndex;

@end

NS_ASSUME_NONNULL_END
