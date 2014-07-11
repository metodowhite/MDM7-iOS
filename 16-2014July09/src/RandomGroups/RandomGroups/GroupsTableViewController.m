//
//  GroupsTableViewController.m
//  RandomGroups
//
//  Created by metodowhite on 09/07/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "GroupsTableViewController.h"

@interface GroupsTableViewController ()
@property (nonatomic) NSInteger cantSections;
@property (nonatomic) NSMutableArray *alumnos;
@property (nonatomic) NSMutableArray *grupo1;
@property (nonatomic) NSMutableArray *grupo2;
@end

@implementation GroupsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.cantSections = 1;
    self.alumnos = [@[@"Carlos García",
                      @"David Dominguez",
                      @"Ivan Muñoz",
                      @"Jaime Iglesias",
                      @"Lara Gago",
                      @"Miguel Caldentey",
                      @"Noé Montes",
                      @"Pedro Díaz de Espada",
                      @"RAFAEL JIMÉNEZ",
                      @"pablo garcia"] mutableCopy];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return _cantSections;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if (_cantSections == 2) {
        if(section == 1) {
            return [_grupo1 count];
        } else {
            return [_grupo2 count];
        }
    } else {
        return [self.alumnos count];
    }
}

- (IBAction)randomize:(id)sender {
    self.grupo1 = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 5; i++) {
        NSInteger randomNum = arc4random() % ([_alumnos count] -1);
        [_grupo1 addObject:_alumnos[randomNum]];
        [_alumnos removeObjectAtIndex:randomNum];
    }
    
    self.grupo2 = _alumnos;
    _cantSections = 2;
    [self.tableView reloadData];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"leCell" forIndexPath:indexPath];
    
    if (_cantSections == 1) {
        cell.textLabel.text = _alumnos[indexPath.row];
    } else {
        if (indexPath.section == 1) {
            cell.textLabel.text = _grupo1[indexPath.row];
        } else {
            cell.textLabel.text = _grupo2[indexPath.row];
        }
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
