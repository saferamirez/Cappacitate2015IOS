//
//  MiPunto.m
//  Mapas
//
//  Created by Francisco on 14/03/15.
//  Copyright (c) 2015 Maravillatech. All rights reserved.
//

#import "MiPunto.h"

@implementation MiPunto

-(id)initInMyCity:(CLLocationCoordinate2D)coords anTitle:(NSString *)title{
    
    if (self =[super init]) {
        
        _coordinate=coords;
        _title=title;
        
    
    }
    
    
    return self;
    
    
}
@end
