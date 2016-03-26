//
//  ViewController.m
//  练习tableview
//
//  Created by 王德华 on 16/3/26.
//  Copyright © 2016年 wangdehua. All rights reserved.
//

#import "ViewController.h"

#import "CLTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    
    [button addTarget:self action:@selector(buttonClick) forControlEvents:    UIControlEventTouchUpInside];
    
    button.center = self.view.center;
    
    [self.view addSubview:button];
}


-(void)buttonClick
{

    CLTableViewController *tableView = [[CLTableViewController alloc]init];
    
    [self presentViewController:tableView animated:YES completion:nil];

}
@end
