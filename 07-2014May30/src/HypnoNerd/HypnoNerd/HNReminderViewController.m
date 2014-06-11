//
//  HNReminderViewController.m
//  HypnoNerd
//
//  Created by metodowhite on 28/05/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "HNReminderViewController.h"

@interface HNReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end


@implementation HNReminderViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Reminder";
        
        UIImage *i = [UIImage imageNamed:@"reminder"];
        self.tabBarItem.image = i;
    }
    return self;
}


- (IBAction)addReminder:(id)sender {
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
    
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"Hypnotize me!";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note]; 
}

@end



















