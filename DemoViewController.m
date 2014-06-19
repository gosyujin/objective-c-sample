//
//  DemoViewController.m
//  sample
//
//  Created by kk_Ataka on 2014/06/19.
//  Copyright (c) 2014年 kk_ataka. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()
{
    NSString *status;
}
@property (weak, nonatomic) IBOutlet UILabel *selected;

@end

@implementation DemoViewController

- (void)setString:(NSString *)selectedStatus
{
    NSLog(@"selected %@", selectedStatus);
    status = selectedStatus;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _selected.text = status;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
