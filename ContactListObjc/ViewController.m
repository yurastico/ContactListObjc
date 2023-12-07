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
// pode retornar qualuqer coisa que eh pai, uiviewcontroller, nscoder etc, id == NSOBject *
- (id)initWithCoder: (NSCoder *) aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(add)];
        self.navigationItem.rightBarButtonItem = button;
        self.navigationItem.title = @"New contact";
    }
    return self;
}

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
    
    [self.navigationController popViewControllerAnimated:YES];
    
    NSLog(@"clicou %@",[self.name text]);
}

@end
