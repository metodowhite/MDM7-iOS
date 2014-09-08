//
//  ColorDescription.m
//  ColorBoard
//
//  Created by metodowhite on 25/07/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "ColorDescription.h"

@implementation ColorDescription

- (instancetype)init
{
    self = [super init];
    if (self) {
        _color = [UIColor colorWithRed:1.0f
                                 green:0.0f
                                  blue:0.0f
                                 alpha:1.0f];
        _name = @"Red";
    }
    return self;
}

@end
