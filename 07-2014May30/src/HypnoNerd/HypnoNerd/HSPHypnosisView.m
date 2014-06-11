//
//  HSPHypnosisView.m
//  HypnoSapo
//
//  Created by metodowhite on 21/05/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "HSPHypnosisView.h"

@interface HSPHypnosisView () // Class Extension
@property (nonatomic, strong) UIColor *circleColor;
@end

@implementation HSPHypnosisView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    // 1
    //    CGRect bounds = self.bounds;
    //    CGPoint center;
    //
    //    center.x = bounds.origin.x + bounds.size.width / 2.0;
    //    center.y = bounds.origin.y + bounds.size.height / 2.0;
    //
    //    float radius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    //
    //    UIBezierPath *path = [[UIBezierPath alloc] init];
    //
    //    path.lineWidth = 10.0;
    //
    //    [path addArcWithCenter:center
    //                    radius:radius - path.lineWidth/2
    //                startAngle:0.0
    //                  endAngle:M_PI * 2.0
    //                 clockwise:YES];
    //
    //    [[UIColor lightGrayColor] setStroke];
    //
    //    [path stroke];
    
    // 2
    CGRect bounds = self.bounds;
    CGPoint center;
    
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    float maxRadius = (hypot(bounds.size.width, bounds.size.height) / 2.0);
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    path.lineWidth = 3.0;
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 5) {
        
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        
        [path addArcWithCenter:center
                        radius:currentRadius
                    startAngle:0.0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    
    [self.circleColor setStroke];
    [path stroke];
    
    
//    UIImage *sapoImage = [UIImage imageNamed:@"Hypnotoad"];
//    [sapoImage drawInRect:CGRectMake(100, 100, 200, 200)];
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@ was touched", self);
    
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    
    self.circleColor = randomColor;
}

- (void)setCircleColor:(UIColor *)circleColor {
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

@end




























