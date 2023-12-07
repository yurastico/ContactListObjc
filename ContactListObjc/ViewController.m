//
//  ViewController.m
//  ContactListObjc
//
//  Created by Yuri Cunha on 07/12/23.
//

#import "ViewController.h"
#import "Contact.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction) add {
    Contact *contact = [Contact new];
    contact.name = self.name.text;
    contact.address = self.address.text;
    contact.email = self.email.text;
    contact.website = self.website.text;
    contact.phone = self.phone.text;
    
    NSLog(@"clicou %@",[self.name text]);
}

@end
