//
//  CDEToDoCell.m
//  CoreDataExample
//
//  Created by Gennady on 7/21/15.
//  Copyright (c) 2015 Gennady. All rights reserved.
//

#import "CDEToDoCell.h"

@implementation CDEToDoCell

- (void)awakeFromNib {
    // Initialization code
    
    // Setup View
    [self setupView];
}

#pragma mark -
#pragma mark View Methods
- (void)setupView {
//    UIImage *imageNormal = [UIImage imageNamed:@"button-done-normal"];
//    UIImage *imageSelected = [UIImage imageNamed:@"button-done-selected"];
//    
//    [self.doneButton setImage:imageNormal forState:UIControlStateNormal];
//    [self.doneButton setImage:imageNormal forState:UIControlStateDisabled];
//    [self.doneButton setImage:imageSelected forState:UIControlStateSelected];
//    [self.doneButton setImage:imageSelected forState:UIControlStateHighlighted];
    [self.doneButton addTarget:self action:@selector(didTapButton:) forControlEvents:UIControlEventTouchUpInside];
}


#pragma mark -
#pragma mark Actions
- (void)didTapButton:(UIButton *)button {
    if (self.didTapButtonBlock) {
        self.didTapButtonBlock();
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
