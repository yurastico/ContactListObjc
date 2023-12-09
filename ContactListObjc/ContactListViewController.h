//
//  ContactListViewController.h
//  ContactListObjc
//
//  Created by Yuri Cunha on 07/12/23.
//

#import <UIKit/UIKit.h>
#import "ContactDao.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactListViewController : UITableViewController

@property ContactDao *dao ;
@end

NS_ASSUME_NONNULL_END
