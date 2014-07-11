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

@interface MWItemsTableViewController()
@property (nonatomic, strong) IBOutlet UIView *headerView;
@end

@implementation MWItemsTableViewController

- (instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
//        for (int i = 0; i < 5; i++) {
//            [[MWItemStore sharedStore] createItem];
//        }
    }
    return self;
}

//2
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"leCell"];
    
    UIView *header = self.headerView;
    [self.tableView setTableHeaderView:header];
}


#pragma mark -

-(instancetype)initWithStyle:(UITableViewStyle)style {
    return [self init];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[MWItemStore sharedStore] allItems] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //1
    //    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"leCell"];
    
    //2
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"leCell"
                                                            forIndexPath:indexPath];
    
    NSArray *items = [[MWItemStore sharedStore] allItems];
    MPAItem *item = items[indexPath.row];
    
    cell.textLabel.text = [item description];
    
    return cell;
}

//1
//- (IBAction)addNewItem:(id)sender {
//    NSInteger lastRow = [self.tableView numberOfRowsInSection:0];
//    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:lastRow inSection:0];
//    
//    [self.tableView insertRowsAtIndexPaths:@[indexPath]
//                          withRowAnimation:UITableViewRowAnimationTop];
//}


//2
- (IBAction)addNewItem:(id)sender {
    MPAItem *newItem = [[MWItemStore sharedStore] createItem];
    NSInteger lastRow = [[[MWItemStore sharedStore] allItems]indexOfObject:newItem];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:lastRow inSection:0];
    
    [self.tableView insertRowsAtIndexPaths:@[indexPath]
                          withRowAnimation:UITableViewRowAnimationTop];
}

- (IBAction)toggleEditingMode:(id)sender {
    if (self.isEditing) {
        [sender setTitle:@"Edit" forState:UIControlStateNormal];
        [self setEditing:NO animated:YES];
    } else {
        [sender setTitle:@"Done" forState:UIControlStateNormal];
        [self setEditing:YES animated:YES];
    }
}

- (UIView *)headerView { //Lazy Loading
    if (!_headerView) {
        [[NSBundle mainBundle] loadNibNamed:@"HeaderView"
                                      owner:self
                                    options:nil];
    }
    return _headerView;
}


@end


















