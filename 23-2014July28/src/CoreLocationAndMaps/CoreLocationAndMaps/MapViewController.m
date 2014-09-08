//
//  ViewController.m
//  CoreLocationAndMaps
//
//  Created by metodowhite on 28/07/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "MapViewController.h"
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"

@interface MapViewController () <MKMapViewDelegate, CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *myMapView;
@property (nonatomic) CLLocationManager *myLocationManager;
@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // self.myMapView.mapType = MKMapTypeHybrid;
    self.myMapView.mapType = MKMapTypeStandard;
    self.myMapView.showsUserLocation = YES;
    self.myMapView.delegate = self;
    
    if([CLLocationManager locationServicesEnabled]) {
        self.myLocationManager = [[CLLocationManager alloc] init];
        self.myLocationManager.delegate = self;
        
        [self.myLocationManager startUpdatingLocation];
    } else {
        NSLog(@"Location Services not Enabled");
    }
    
    
    CLLocationCoordinate2D location = CLLocationCoordinate2DMake(50.82191629, -0.1381176);
    MyAnnotation *annotation = [[MyAnnotation alloc] initWithCoordinates:location
                                                                   title:@"My Title"
                                                                subtitle:@"My SubTitle"];
    
    [self.myMapView addAnnotation:annotation];
}


- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    
    MKAnnotationView *result = nil;
    
    if ([annotation isKindOfClass:[MyAnnotation class]] == NO) {
        return result;
    }
    
    if ([mapView isEqual:self.myMapView] == NO) {
        return result;
    }
    
    MyAnnotation *senderAnnotation = (MyAnnotation *)annotation;
    
    NSString *pinReusableIndentifier = [MyAnnotation reusableIdentifierForPinColor:senderAnnotation.pinColor];
    
    MKPinAnnotationView *annotationView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:pinReusableIndentifier];
    
    if (annotationView == nil) {
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:senderAnnotation
                                                         reuseIdentifier:pinReusableIndentifier];
        [annotationView setCanShowCallout:YES];
    }
    
    annotationView.pinColor = senderAnnotation.pinColor;
    
    result = annotationView;
    
    return result;
}




- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    
    NSLog(@"latitude: %f", newLocation.coordinate.latitude);
    NSLog(@"longitude: %f", newLocation.coordinate.longitude);
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    NSLog(@"locations: %@", locations);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end














