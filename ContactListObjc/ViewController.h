//
//  ViewController.h
//  ContactListObjc
//
//  Created by Yuri Cunha on 07/12/23.
//

#import <UIKit/UIKit.h>
#import "ContactDao.h"

@protocol FormViewControllerDelegate <NSObject>

-(void)contactCreated: (Contact *) contact;
-(void)contactUpdated: (Contact *) contact;

@end

@interface ViewController : UIViewController

@property IBOutlet UITextField *name;
@property IBOutlet UITextField *address;
@property IBOutlet UITextField *email;
@property IBOutlet UITextField *phone;
@property IBOutlet UITextField *website;
@property ContactDao *dao;
@property Contact *contact;
@property id<FormViewControllerDelegate> delegate;

@end

