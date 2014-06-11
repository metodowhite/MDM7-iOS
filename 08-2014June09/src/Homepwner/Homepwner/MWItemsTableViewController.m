//
//  MWItemsTableViewController.m
//  Homepwner
//
//  Created by metodowhite on 09/06/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "MWItemsTableViewController.h"
#import "MWItemStore.h"
#import "MPAItem.h"

@implementation MWItemsTableViewController

- (instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        //TODO: haz algo necio
        //FIXME: arreglame necio
        //???: wtf? necio…
        for (int i = 0; i < 5; i++) {
            [[MWItemStore sharedStore] createItem];
        }
    }
    return self;
}

#pragma mark -
-(instancetype)initWithStyle:(UITableViewStyle)style {
    return [self init];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[MWItemStore sharedStore] allItems] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"leCell"];
    
    NSArray *items = [[MWItemStore sharedStore] allItems];
    MPAItem *item = items[indexPath.row];
    
    cell.textLabel.text = [item description];
    
    return cell;
}


@end


















