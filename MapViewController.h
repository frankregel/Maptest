//
//  MapViewController.h
//  Maptest
//
//  Created by Frank on 11.02.14.
//  Copyright (c) 2014 Frank. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>


@interface MapViewController : UIViewController <MKMapViewDelegate>

@property MKMapView *map;

@end
