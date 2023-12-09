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
       
        
        self.dao = [ContactDao contactDaoInstance];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *button = nil;
    if (self.contact) {
        button = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action: @selector(update)];
        self.navigationItem.title = @"Edit contact";
    } else {
        button = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(add)];
        self.navigationItem.title = @"New contact";
    }
    
   
    self.navigationItem.rightBarButtonItem = button;
    
    if (self.contact) {
        self.name.text = self.contact.name;
        self.email.text = self.contact.email;
        self.address.text = self.contact.address;
        self.website.text = self.contact.website;
        self.phone.text = self.contact.phone;
    }
    // Do any additional setup after loading the view.
}

-(void) add {
    self. contact = [Contact new];
    [self getFormData];
    
    [self.dao addContact:self.contact];
    [self.navigationController popViewControllerAnimated:YES];
    [self.delegate contactCreated: self.contact];
    
    
    NSLog(@"clicou %@",[self.name text]);
}

-(void) update {
    [self getFormData];
    [self.navigationController popViewControllerAnimated:YES];
    [self.delegate  contactUpdated: self.contact];
}

-(void)getFormData {
    self.contact.name = self.name.text;
    self.contact.address = self.address.text;
    self.contact.email = self.email.text;
    self.contact.website = self.website.text;
    self.contact.phone = self.phone.text;
}

@end
