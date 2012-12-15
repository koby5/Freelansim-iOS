//
//  TaskCell.m
//  Freelansim
//
//  Created by Valeriy Zinchenko on 13.12.12.
//  Copyright (c) 2012 vexadev. All rights reserved.
//

#import "TaskCell.h"

@implementation TaskCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_NameLabel release];
    [_DateLabel release];
    [_DescriptionLabel release];
    [super dealloc];
}
@end
