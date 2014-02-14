//
//  MapViewController.m
//  Maptest
//
//  Created by Frank on 11.02.14.
//  Copyright (c) 2014 Frank. All rights reserved.
//

#import "MapViewController.h"


@interface MapViewController ()

@end

@implementation MapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        _map = [[MKMapView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
        _map.showsUserLocation = YES;
        
        [self.view addSubview:_map];
        
    }
    return self;
}

//delegate Methode aus MKMapView
-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    //Region 800 * 800 Meter um die Location
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
    _map.showsUserLocation = YES;
    
    //Annotation adden (Marke setzen)
    MKPointAnnotation *marke = [MKPointAnnotation new];
    marke.coordinate = userLocation.coordinate;
    marke.title = @"Wo bin ich?";
    marke.subtitle = @"genau hier!";
    [_map addAnnotation:marke];
    
    
    [self.map setRegion:[self.map regionThatFits:region]animated:YES];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.map.delegate = self;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
