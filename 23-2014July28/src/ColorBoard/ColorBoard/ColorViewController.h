//
//  ColorViewController.h
//  ColorBoard
//
//  Created by metodowhite on 23/07/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ColorDescription.h"

@interface ColorViewController : UIViewController <UIViewControllerRestoration>

@property (nonatomic) ColorDescription *colorDescription;
@property (nonatomic) BOOL existingColor;

@end
