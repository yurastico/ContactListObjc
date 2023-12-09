//
//  ContactListViewController.m
//  ContactListObjc
//
//  Created by Yuri Cunha on 07/12/23.
//

#import "ContactListViewController.h"
#import "ViewController.h"
#import "Contact.h"

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
    self.dao = [ContactDao contactDaoInstance];
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
     
    return self;
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if(editingStyle == UITableViewCellEditingStyleDelete) {
        Contact *contact = [self.dao contactOfIndex:indexPath.row];
        [self.dao removeContact: contact];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.selectedContact = [self.dao contactOfIndex:indexPath.row];
    [self showForm];
}

-(void) showForm {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *formViewController = [storyboard instantiateViewControllerWithIdentifier:@"FormView"];
    //formViewController.dao = self.dao;
    if (self.selectedContact) {
        formViewController.contact = self.selectedContact;
    }
    self.selectedContact = nil;
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dao total];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *identifier = @"Cell";
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    }
    
   
    Contact *contact = [self.dao contactOfIndex:indexPath.row];
    cell.textLabel.text = contact.name;
    return cell;
}

-(void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
}

@end
