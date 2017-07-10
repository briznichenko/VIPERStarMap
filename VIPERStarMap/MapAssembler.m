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
        self.presenter = [[MapPresenter alloc] init];
    }
    return self;
}

@end
