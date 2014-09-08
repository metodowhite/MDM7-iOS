//
//  MyAnnotation.h
//  CoreLocationAndMaps
//
//  Created by metodowhite on 28/07/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

extern NSString *const kReusablePinRed;
extern NSString *const kReusablePinGreen;
extern NSString *const kReusablePinPurple;

@interface MyAnnotation : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *subtitle;
@property (nonatomic) MKPinAnnotationColor pinColor;

- (instancetype)initWithCoordinates:(CLLocationCoordinate2D)coordinates
                              title:(NSString *)title
                           subtitle:(NSString *)subtitle;

+ (NSString *)reusableIdentifierForPinColor:(MKPinAnnotationColor)color;

@end
