//
//  Item.h
//  CoreDataExample
//
//  Created by Gennady on 7/21/15.
//  Copyright (c) 2015 Gennady. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class User;

@interface Item : NSManagedObject

@property (nonatomic, retain) NSDate * createdAt;
@property (nonatomic, retain) NSNumber * done;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) User *user;

@end
