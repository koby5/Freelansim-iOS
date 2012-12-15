//
//  TaskCell.h
//  Freelansim
//
//  Created by Valeriy Zinchenko on 13.12.12.
//  Copyright (c) 2012 vexadev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskCell : UITableViewCell
@property (retain, nonatomic) IBOutlet UILabel *NameLabel;
@property (retain, nonatomic) IBOutlet UILabel *DateLabel;
@property (retain, nonatomic) IBOutlet UILabel *DescriptionLabel;

@property (copy) UILabel *Name;
@property (copy) UILabel *Date;
@property (copy) UILabel *Description;

@end
