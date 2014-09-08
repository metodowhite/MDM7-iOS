//
//  MyAnnotation.m
//  CoreLocationAndMaps
//
//  Created by metodowhite on 28/07/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation

- (instancetype)initWithCoordinates:(CLLocationCoordinate2D)coordinates
                              title:(NSString *)title
                           subtitle:(NSString *)subtitle {
    
    self = [super init];
    if (self) {
        _coordinate = coordinates;
        _title = title;
        _subtitle = subtitle;
        _pinColor = MKPinAnnotationColorGreen;
    }
    return self;
}

+ (NSString *)reusableIdentifierForPinColor:(MKPinAnnotationColor)color {
    
    NSString *result = nil;
    
    switch (color) {
        case MKPinAnnotationColorRed:
            result = kReusablePinRed;
            break;
        
        case MKPinAnnotationColorGreen:
            result = kReusablePinGreen;
            break;
        
        case MKPinAnnotationColorPurple:
            result = kReusablePinPurple;
            break;
        
        default:
            break;
    }
    
    return result;
}



@end












