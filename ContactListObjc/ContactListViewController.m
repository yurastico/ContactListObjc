//
//  ContactListViewController.m
//  ContactListObjc
//
//  Created by Yuri Cunha on 07/12/23.
//

#import "ContactListViewController.h"
#import "ViewController.h"
@interface ContactListViewController ()

@end

@implementation ContactListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (ContactListViewController *)init {
    self = [ super init ];
    UIBarButtonItem *formButtom = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(showForm)];
    self.navigationItem.rightBarButtonItem = formButtom;
    self.navigationItem.title = @"Contacts";
     
    return self;
}

-(void) showForm {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:NULL];
    UIViewController *formViewController = [storyboard instantiateViewControllerWithIdentifier:@"FormView"];
    [self.navigationController pushViewController:formViewController animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
