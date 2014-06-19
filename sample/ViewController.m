//
//  ViewController.m
//  sample
//
//  Created by kk_Ataka on 2014/06/19.
//  Copyright (c) 2014年 kk_ataka. All rights reserved.
//

#import "ViewController.h"
#import "DemoViewController.h"

@interface ViewController ()
{
    NSArray *_status;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _status = [self readStatusList];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma TableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _status.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"えらんでー";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSString *status = _status[indexPath.row];

    NSLog(@"cellforrow %@", status);

    cell.textLabel.text = status;
    cell.detailTextLabel.text = status;
    
    return cell;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSLog(@"didsele");
//    NSIndexPath *selectedIndexPath = [[self tableView] indexPathForSelectedRow];
//    NSString *selectedStatus = _status[selectedIndexPath.row];
//    
//    NSLog(@"cellforrow %@", selectedStatus);
//}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *selectedIndexPath = [[self tableView] indexPathForSelectedRow];
    NSString *selectedStatus = _status[selectedIndexPath.row];

    NSLog(@"cellforrow %@", selectedStatus);

    [[segue destinationViewController] setString:selectedStatus];
}

#pragma private

- (NSArray *)readStatusList
{
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"status" ofType:@"plist"];
    NSArray *status = [NSArray arrayWithContentsOfFile:path];
    return status;
}

@end
