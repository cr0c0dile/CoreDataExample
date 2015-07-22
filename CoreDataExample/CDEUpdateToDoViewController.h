//
//  CDEUpdateToDoViewController.h
//  CoreDataExample
//
//  Created by Gennady on 7/21/15.
//  Copyright (c) 2015 Gennady. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class Item;

@interface CDEUpdateToDoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (strong, nonatomic) Item *record;

@end
