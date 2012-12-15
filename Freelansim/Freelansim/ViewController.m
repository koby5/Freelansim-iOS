//
//  ViewController.m
//  Freelansim
//
//  Created by Valeriy Zinchenko on 13.12.12.
//  Copyright (c) 2012 vexadev. All rights reserved.
//

#import "ViewController.h"
#import "TaskCell.h"
#import "TaskDetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize TasksSource;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.title = @"Tasks";    
    
    /*UIButton* infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    [infoButton addTarget:self action:@selector(showInfoView:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationController.navigationBar..leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:infoButton];*/
    
    self.TasksSource = [NSArray arrayWithObjects:@"Tom", @"Bill", @"Tom", @"Joe", @"Tom", @"Garry", @"Test", @"Bill", @"Tom", @"Joe", @"Tom", @"Garry", @"Test", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc
{
    [_TasksList release];
    [super dealloc];
}

/*-------------------------------------------------------------------------------------*/
/*----------TASK TABLE IMPLIMENTATION--------------------------------------------------*/
/*-------------------------------------------------------------------------------------*/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [TasksSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    TaskCell *cell = (TaskCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TaskCell"owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.NameLabel.text = [TasksSource objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TaskDetailViewController *detailViewController = [[TaskDetailViewController alloc]
                                                   initWithNibName:@"TaskDetailViewController" bundle:nil];
    //detailViewController.selectedStudent = [students objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
}

@end