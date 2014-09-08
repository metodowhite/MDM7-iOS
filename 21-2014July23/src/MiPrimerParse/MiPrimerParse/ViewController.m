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
    // [gameScore saveInBackground];
    [gameScore saveEventually];
}

- (IBAction)retrieve:(id)sender {
    PFQuery *query = [PFQuery queryWithClassName:@"GameScore"];
    [query getObjectInBackgroundWithId:@"lKGbg31Yla" block:^(PFObject *object, NSError *error) {
        NSLog(@"cheatMode: %d", [object[@"cheatMode"] boolValue]);
        NSLog(@"playerName: %@", object[@"playerName"]);
        NSLog(@"score: %d", [object[@"score"] intValue]);
        // object[@"updatedAt"];
        // object.updatedAt;
        // [object refresh];
    }];
}

- (IBAction)update:(id)sender {
    PFQuery *query = [PFQuery queryWithClassName:@"GameScore"];
    [query getObjectInBackgroundWithId:@"lKGbg31Yla" block:^(PFObject *object, NSError *error) {
        object[@"cheatMode"] = @YES;
        [object addUniqueObjectsFromArray:@[@"flying", @"kungfu"] forKey:@"skills"];
        
        // [object deleteInBackground];
        // [object removeObjectForKey:@"skills"];
        
        [object saveInBackground];
    }];
}

- (IBAction)increment:(id)sender {
    PFQuery *query = [PFQuery queryWithClassName:@"GameScore"];
    [query getObjectInBackgroundWithId:@"lKGbg31Yla" block:^(PFObject *object, NSError *error) {
        [object incrementKey:@"score"];
        // [object incrementKey:@"score" byAmount:@17];
        [object saveInBackground];
    }];
}


- (IBAction)relational:(id)sender {
    PFObject *myPost = [PFObject objectWithClassName:@"Post"];
    myPost[@"title"] = @"title lorem ipsum";
    myPost[@"content"] = @"content lorem ipsum";
    
    PFObject *myComment = [PFObject objectWithClassName:@"Comment"];
    myComment[@"content"] = @"comment lorem ipsum";
    
    myComment[@"parent"] = myPost;
    [myComment saveInBackground];
}

- (IBAction)basicQuery:(id)sender {
    
    // NSPredicate *myPredicate = [NSPredicate predicateWithFormat:@"cheatMode == false"];
    // PFQuery *query = [PFQuery queryWithClassName:@"GameScore" predicate:myPredicate];
    
    PFQuery *query = [PFQuery queryWithClassName:@"GameScore"];
    
    [query whereKey:@"cheatMode" equalTo:@NO];
    // [query whereKey:@"score" equalTo:@11];
    // [query whereKey:<#(NSString *)#> notEqualTo:<#(id)#>];
    // [query whereKey:@"score" greaterThan:@18];
    // query.limit = 10;
    // [query getFirstObject];
    // query.skip = 10;
    
    [query orderByAscending:@"score"];
    NSArray *querySkills = @[@"kungfu", @"judo"];
    [query whereKey:@"skills" containedIn:querySkills];
    
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            for (PFObject *object in objects) {
                NSLog(@"%@", object.objectId);
            }
        } else {
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
}

@end





































