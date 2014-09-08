//
//  ViewController.m
//  MiPrimerParse
//
//  Created by metodowhite on 21/07/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createObject:(id)sender {
    PFObject *gameScore = [PFObject objectWithClassName:@"GameScore"];
    gameScore[@"score"] = @4567;
    gameScore[@"playerName"] = @"Ali";
    gameScore[@"cheatMode"] = @NO;
    [gameScore saveInBackground];
}

- (IBAction)retrieve:(id)sender {
    PFQuery *query = [PFQuery queryWithClassName:@"GameScore"];
    [query getObjectInBackgroundWithId:@"UmfVVgD4Vp" block:^(PFObject *object, NSError *error) {
        NSLog(@"cheatMode: %d", [object[@"cheatMode"] boolValue]);
        NSLog(@"playerName: %@", object[@"playerName"]);
        NSLog(@"score: %d", [object[@"score"] intValue]);
    }];
}

@end





































