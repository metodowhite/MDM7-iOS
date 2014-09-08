//
//  ViewController.m
//  Asynchronously
//
//  Created by metodowhite on 16/07/14.
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








- (IBAction)download:(id)sender {
    
    NSString *urlAsString = @"http://www.apple.com";
    NSURL *url = [NSURL URLWithString:urlAsString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    
    [NSURLConnection
     sendAsynchronousRequest:urlRequest
     queue:queue
     completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
         
         
         if ([data length] > 0 && connectionError == nil) {
            
             NSFileManager *fileManager = [[NSFileManager alloc] init];
             NSURL *documentsFolderUrl = [fileManager URLForDirectory:NSDocumentDirectory
                                                             inDomain:NSUserDomainMask
                                                    appropriateForURL:nil
                                                               create:NO
                                                                error:nil];
             
             NSURL *filePath = [documentsFolderUrl URLByAppendingPathComponent:@"apple.html"];
             [data writeToURL:filePath atomically:YES];
             
             NSString *html = [[NSString alloc] initWithData:data
                                                    encoding:NSUTF8StringEncoding];
             NSLog(@"HTML: %@", html);
         }
         
     }];
}


- (IBAction)JSONSerialize:(id)sender {
    NSDictionary *dictionary =
    @{
      @"First Name" : @"Paco",
      @"Last Name"  : @"Marchena",
      @"Age"        : @31,
      @"dogs"       : @[@"Curra", @"Sofi", @"Galga", @"Paca"]
      };
    
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    
    if ([jsonData length] > 0 && error == nil) {
        NSLog(@"Success!: %@", jsonData);
        NSString *jsonString =  [[NSString alloc] initWithData:jsonData
                                                      encoding:NSUTF8StringEncoding];
        NSLog(@"jsonString: %@", jsonString);
    }
}




@end





































