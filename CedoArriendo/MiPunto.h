//
//  MiPunto.h
//  Mapas
//
//  Created by Francisco on 14/03/15.
//  Copyright (c) 2015 Maravillatech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import  <MapKit/MapKit.h>

@interface MiPunto : NSObject<MKAnnotation>

@property(nonatomic,readonly)CLLocationCoordinate2D coordinate;

@property(nonatomic,readonly,copy)NSString *title;

-(id)initInMyCity:(CLLocationCoordinate2D)coords anTitle:(NSString *)title;

@end
