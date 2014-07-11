//
//  MPADetailViewController.h
//  Homepwner
//
//  Created by metodowhite on 23/06/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MPAItem;

@interface MPADetailViewController : UIViewController

@property (nonatomic, strong) MPAItem *item;

@property (nonatomic, copy) void (^dismissBlock)(void);

- (instancetype)initForNewItem:(BOOL)isNew;


@end
