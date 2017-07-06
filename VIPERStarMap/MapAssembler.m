//
//  MapAssembler.m
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import "MapAssembler.h"

@implementation MapAssembler

-(instancetype)initAndAssemble
{
    self = [super init];
    if(self)
    {
        self.view = [MapViewController new];
        self.interactor = [MapInteractor new];
        self.presenter = [MapPresenter new];
        self.entity = [MapEntity new];
        self.router = [MapRouter new];
    }
    return self;
}

@end
