//
//  ColorViewController.m
//  ColorBoard
//
//  Created by metodowhite on 23/07/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "ColorViewController.h"

@implementation ColorViewController

- (IBAction)dismiss:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES
                                                      completion:nil];
}

@end
