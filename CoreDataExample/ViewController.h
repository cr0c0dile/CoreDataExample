//
//  ViewController.h
//  CoreDataExample
//
//  Created by Gennady on 7/20/15.
//  Copyright (c) 2015 Gennady. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end

