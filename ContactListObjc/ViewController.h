//
//  ViewController.h
//  ContactListObjc
//
//  Created by Yuri Cunha on 07/12/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property IBOutlet UITextField *name;
@property IBOutlet UITextField *address;
@property IBOutlet UITextField *email;
@property IBOutlet UITextField *phone;
@property IBOutlet UITextField *website;
@property NSMutableArray *contacts;

@end

