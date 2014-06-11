//
//  HNHypnosisViewController.m
//  HypnoNerd
//
//  Created by metodowhite on 28/05/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "HNHypnosisViewController.h"
#import "HSPHypnosisView.h"

@implementation HNHypnosisViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
        
        UIImage *i = [UIImage imageNamed:@"hypnosis"];
        self.tabBarItem.image = i;
    }
    return self;
}

- (void)loadView {
    HSPHypnosisView *backgroundView = [[HSPHypnosisView alloc] init];
    self.view = backgroundView;
}

@end
