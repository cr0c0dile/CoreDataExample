//
//  CDEToDoCell.h
//  CoreDataExample
//
//  Created by Gennady on 7/21/15.
//  Copyright (c) 2015 Gennady. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^TSPToDoCellDidTapButtonBlock)();

@interface CDEToDoCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;

@property (copy, nonatomic) TSPToDoCellDidTapButtonBlock didTapButtonBlock;

@end
