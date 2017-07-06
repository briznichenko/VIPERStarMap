//
//  MapPresenter.m
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import "MapPresenter.h"

@implementation MapPresenter

-(instancetype)init
{
    self = [super init];
    if(self)
    {
        self.mapView = [MapViewController new];
    }
    return self;
}

@end
