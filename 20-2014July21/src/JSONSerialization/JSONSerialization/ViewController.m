//
//  ViewController.m
//  JSONSerialization
//
//  Created by metodowhite on 21/07/14.
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

- (IBAction)serialize:(id)sender {
    
    NSDictionary *dictionary = @{
                                 @"First Name" : @"Paco",
                                 @"Last Name"  : @"Marchena",
                                 @"Age"        : @31,
                                 @"Mascotas"   : @[@"Curra", @"Sofi", @"Galga", @"Paca"]
                                 };
    
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization
                        dataWithJSONObject:dictionary
                        options:NSJSONWritingPrettyPrinted
                        error:&error];
    
    if ([jsonData length] > 0 && error == nil) {
        
        NSString *jsonString = [[NSString alloc] initWithData:jsonData
                                                     encoding:NSUTF8StringEncoding];
        NSLog(@"%@", jsonString);
    }
}


- (IBAction)getUser:(id)sender {
    NSURL *url = [[NSURL alloc]initWithString:@"http://api.randomuser.me"];
    // NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:url
                                             cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
                                         timeoutInterval:30.0f];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
    
    
    [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        
        if ([data length] > 0 && connectionError == nil) {
            // NSLog(@"%@", [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
            
            //Deserialization
            NSError *error = nil;
            id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                            options:NSJSONReadingAllowFragments
                                                              error:&error];
            if (jsonObject != nil && error == nil) {
                if ([jsonObject isKindOfClass:[NSDictionary class]])
                {
                    NSDictionary *deserializedDictionary  = jsonObject;
                    NSLog(@"%@", deserializedDictionary[@"results"][0][@"seed"]);
                }
                else if ([jsonObject isKindOfClass:[NSArray class]])
                {
                    NSArray *deserializedArray = jsonObject;
                    NSLog(@"%@", deserializedArray);
                }
            }
        }
    }];
}


@end




























