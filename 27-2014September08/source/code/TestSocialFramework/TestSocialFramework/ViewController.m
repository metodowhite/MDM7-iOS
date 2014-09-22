//
//  ViewController.m
//  TestSocialFramework
//
//  Created by metodowhite on 08/09/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "ViewController.h"

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

- (IBAction)tweet:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        SLComposeViewControllerCompletionHandler myBlock = ^(SLComposeViewControllerResult result){
            if (result == SLComposeViewControllerResultCancelled) {
                NSLog(@"Cancelled");
            } else {
                NSLog(@"Done");
            }
            
            [controller dismissViewControllerAnimated:YES completion:nil];
        };
        
        controller.completionHandler = myBlock;
        [controller setInitialText:@"Check out my app"];
        [controller addImage:[UIImage imageNamed:@"gatico con toxoplasmosis.png"]];
        [controller addURL:[NSURL URLWithString:@"http://gatox.com"]];
        
        [self presentViewController:controller animated:YES completion:nil];
    } else {
        NSLog(@"Facebook Composer is not avaible");
    }
}

@end





























