//
//  CDEUpdateToDoViewController.m
//  CoreDataExample
//
//  Created by Gennady on 7/21/15.
//  Copyright (c) 2015 Gennady. All rights reserved.
//

#import "CDEUpdateToDoViewController.h"
#import "Item.h"

@interface CDEUpdateToDoViewController ()

@end

@implementation CDEUpdateToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (self.record) {
        // Update Text Field
//        [self.textField setText:[self.record valueForKey:@"name"]];
        [self.textField setText:self.record.name];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -
#pragma mark Actions

- (IBAction)cancel:(id)sender {
    // Pop View Controller
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)save:(id)sender {
    // Helpers
    NSString *name = self.textField.text;
    
    if (name && name.length) {
        // Populate Record
//        [self.record setValue:name forKey:@"name"];
        self.record.name = name;
        
        // Save Record
        NSError *error = nil;
        
        if ([self.managedObjectContext save:&error]) {
            // Pop View Controller
            [self.navigationController popViewControllerAnimated:YES];
            
        } else {
            if (error) {
                NSLog(@"Unable to save record.");
                NSLog(@"%@, %@", error, error.localizedDescription);
            }
            
            // Show Alert View
            [[[UIAlertView alloc] initWithTitle:@"Warning" message:@"Your to-do could not be saved." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        }
        
    } else {
        // Show Alert View
        [[[UIAlertView alloc] initWithTitle:@"Warning" message:@"Your to-do needs a name." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }
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
