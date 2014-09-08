//
//  ColorViewController.m
//  ColorBoard
//
//  Created by metodowhite on 23/07/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()
@property (nonatomic, weak) IBOutlet UITextField *textField;

@property (nonatomic, weak) IBOutlet UISlider *redSlider;
@property (nonatomic, weak) IBOutlet UISlider *greenSlider;
@property (nonatomic, weak) IBOutlet UISlider *blueSlider;
@end

@implementation ColorViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    if (self.existingColor) {
        self.navigationItem.rightBarButtonItem = nil;
    }
}

- (void)viewDidLoad {
    UIColor *color = self.colorDescription.color;
    
    CGFloat red, green, blue;
    [color getRed:&red
            green:&green
             blue:&blue alpha:nil];
    
    self.redSlider.value = red;
    self.greenSlider.value = green;
    self.blueSlider.value = blue;
    
    self.view.backgroundColor = color;
    self.textField.text = self.colorDescription.name;

}


- (IBAction)dismiss:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES
                                                      completion:nil];
}

- (IBAction)changeColor:(id)sender {
    float red = self.redSlider.value;
    float green = self.greenSlider.value;
    float blue = self.blueSlider.value;
    
    UIColor *newColor = [UIColor colorWithRed:red
                                        green:green
                                         blue:blue
                                        alpha:1.0f];
    self.view.backgroundColor = newColor; 
}

+ (UIViewController *)viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents
                                                            coder:(NSCoder *)coder {
    ColorViewController *vc = nil;
    UIStoryboard *storyboard = [coder decodeObjectForKey:UIStateRestorationViewControllerStoryboardKey];
    
    if (storyboard) {
        vc = (ColorViewController *)[storyboard instantiateViewControllerWithIdentifier:@"ColorViewController"];
        vc.restorationIdentifier = [identifierComponents lastObject];
        vc.restorationClass = [ColorViewController class];
    }
    return vc;
}

@end




























