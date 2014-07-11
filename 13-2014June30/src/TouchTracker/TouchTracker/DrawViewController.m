//
//  DrawViewController.m
//  TouchTracker
//
//  Created by metodowhite on 25/06/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "DrawViewController.h"
#import "DrawView.h"

@interface DrawViewController ()

@end

@implementation DrawViewController

- (void)loadView {
    self.view = [[DrawView alloc] initWithFrame:CGRectZero];
}

@end
