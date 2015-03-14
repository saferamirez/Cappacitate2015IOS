//
//  MapaViewController.m
//  CedoArriendo
//
//  Created by Francisco on 14/03/15.
//  Copyright (c) 2015 SafeDev. All rights reserved.
//

#import "MapaViewController.h"
#import <MapKit/MapKit.h>
#import "MiPunto.h"

@interface MapaViewController ()<MKMapViewDelegate,CLLocationManagerDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong,nonatomic) CLLocationManager *locationManger;
@end

@implementation MapaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _locationManger =[[CLLocationManager alloc]init];
    
    _locationManger.delegate =self;
    
    MiPunto *punto= [[MiPunto alloc]initInMyCity:CLLocationCoordinate2DMake(7.11392, -73.1198) anTitle:@"La ciudad Bonita"];
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([punto coordinate], 300, 300);
    
    
    [_mapView setRegion:region animated:YES];
    
    
    _mapView.delegate=self;
    
    [_mapView addAnnotation:punto];
    
    [_locationManger requestAlwaysAuthorization];
    [_mapView setShowsUserLocation:YES];

   
}
- (IBAction)close:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([userLocation coordinate], 1000, 1000);
    
    
    [_mapView setRegion:region animated:YES];
    
    
}
@end
