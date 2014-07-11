//
//  ETBPictureViewController.m
//  ETBExamenTabBar
//
//  Created by metodowhite on 13/06/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "ETBPictureViewController.h"

@interface ETBPictureViewController ()

@end

@implementation ETBPictureViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

        self.tabBarItem.title = @"Stars";
    
        UIImage *i = [UIImage imageNamed:@"icon2"];
        self.tabBarItem.image = i;
        
        
    }
    return self;
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
