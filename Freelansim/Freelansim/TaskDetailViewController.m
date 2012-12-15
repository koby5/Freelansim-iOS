//
//  TaskDetailViewController.m
//  Freelansim
//
//  Created by Valeriy Zinchenko on 15.12.12.
//  Copyright (c) 2012 vexadev. All rights reserved.
//

#import "TaskDetailViewController.h"

@interface TaskDetailViewController ()

@end

@implementation TaskDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.title = Title;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc
{
    [_DescriptionView release];
    [_DateLabel release];
    [_BudgetLable release];
    [_NameLable release];
    [Title release];
    [super dealloc];
}
- (void)viewDidUnload
{
    [self setDescriptionView:nil];
    [self setDateLabel:nil];
    [self setBudgetLable:nil];
    [self setNameLable:nil];
    [super viewDidUnload];
}
@end
