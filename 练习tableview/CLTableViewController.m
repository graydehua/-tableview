//
//  CLTableViewController.m
//  练习tableview
//
//  Created by 王德华 on 16/3/26.
//  Copyright © 2016年 wangdehua. All rights reserved.
//

#import "CLTableViewController.h"

@interface CLTableViewController ()

@property(nonatomic,strong)NSArray *weArray;

@end

@implementation CLTableViewController

-(NSArray *)weArray{

    if (_weArray == nil) {
        
        NSMutableDictionary *dict1 = [NSMutableDictionary dictionary];
        
        dict1[@"image"] = @"222";
        dict1[@"title"] = @"关于我们";
        
        NSMutableDictionary *dict2 = [NSMutableDictionary dictionary];
        
        dict2[@"image"] = @"222";
        dict2[@"title"] = @"意见反馈";
        
        NSMutableDictionary *dict3 = [NSMutableDictionary dictionary];
        
        dict3[@"image"] = @"222";
        dict3[@"title"] = @"版本推送";
        
        _weArray = @[dict1,dict2,dict3];
        
    }
    return _weArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
 
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.weArray.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *ID = @"we";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }

    
    NSDictionary *dict = self.weArray[indexPath.row];
    
    NSString *imageName = dict[@"image"];
    cell.imageView.image = [UIImage imageNamed:@"222"];
    
    NSString *title = dict[@"title"];
    cell.textLabel.text = title;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//         
//  if (indexPath.section == 0) {
//        
//        if (indexPath.row ==0) {
//            
    
 
}

@end
