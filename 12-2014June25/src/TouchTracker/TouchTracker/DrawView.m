//
//  DrawView.m
//  TouchTracker
//
//  Created by metodowhite on 25/06/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "DrawView.h"
#import "Line.h"

@interface DrawView ()
@property (nonatomic, strong) Line *currentLine;
@property (nonatomic, strong) NSMutableArray *finishedLines;
@end

@implementation DrawView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.finishedLines = [[NSMutableArray alloc] init];
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}

- (void)strokeLine:(Line *)line {
    UIBezierPath *bp = [UIBezierPath bezierPath];
    bp.lineWidth = 10;
    bp.lineCapStyle = kCGLineCapRound;
    
    [bp moveToPoint:line.begin];
    [bp addLineToPoint:line.end];
    [bp stroke];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    [[UIColor blackColor]set];
    for (Line *line in self.finishedLines) {
        [self strokeLine:line];
    }
    
    if (self.currentLine) {
        [[UIColor redColor]set];
        [self strokeLine:self.currentLine];
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *t = [touches anyObject];
    CGPoint location = [t locationInView:self];
    
    self.currentLine = [[Line alloc] init];
    self.currentLine.begin = location;
    self.currentLine.end = location;
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *t = [touches anyObject];
    CGPoint location = [t locationInView:self];
    
    self.currentLine.end = location;
    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self .finishedLines addObject:self.currentLine];
    
    self.currentLine = nil;
    [self setNeedsDisplay];
}





@end
















