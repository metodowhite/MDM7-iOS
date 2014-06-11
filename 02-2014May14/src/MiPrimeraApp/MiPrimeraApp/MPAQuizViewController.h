//
//  MPAQuizViewController.h
//  MiPrimeraApp
//
//  Created by metodowhite on 12/05/14.
//  Copyright (c) 2014 elkraneoteach. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MPAQuizViewController : UIViewController

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;


@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end
