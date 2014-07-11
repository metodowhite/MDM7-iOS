//
//  ETBItemsTableView.m
//  ETBExamenTabBar
//
//  Created by metodowhite on 13/06/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "ETBItemsTableViewController.h"


@interface ETBItemsTableViewController()

@property (nonatomic, strong) NSArray *miArr;

@end

@implementation ETBItemsTableViewController

-(instancetype)init{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        self.miArr = @[@"Canvas", @"Sugus", @"Rantamplan"];
        
        self.tabBarItem.title = @"Dogs";
        
        UIImage *i=[UIImage imageNamed:@"icon1"];
        self.tabBarItem.image=i;
        
    }
    return self;
}

-(instancetype)initWithStyle:(UITableViewStyle)style{
    self = [self init];
    
    return self;
}

-(void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"leCell"];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_miArr count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"leCell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.miArr[indexPath.row];
    return cell;
    
}




@end
















