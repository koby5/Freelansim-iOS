//
//  ViewController.h
//  Freelansim
//
//  Created by Valeriy Zinchenko on 13.12.12.
//  Copyright (c) 2012 vexadev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSMutableArray *TasksSource;
}

@property (retain, nonatomic) IBOutlet UITableView *TasksList;
@property (retain, nonatomic) NSMutableArray *TasksSource;

@end