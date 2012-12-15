//
//  TaskDetailViewController.h
//  Freelansim
//
//  Created by Valeriy Zinchenko on 15.12.12.
//  Copyright (c) 2012 vexadev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskDetailViewController : UIViewController
{
    NSString *Title;
}

@property (retain, nonatomic) IBOutlet UITextView *DescriptionView;
@property (retain, nonatomic) IBOutlet UILabel *DateLabel;
@property (retain, nonatomic) IBOutlet UILabel *BudgetLable;
@property (retain, nonatomic) IBOutlet UILabel *NameLable;
@property (copy) NSString *Title;

@end
