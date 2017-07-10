//
//  MapPresenter.m
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import "MapPresenter.h"
#import "MapInteractor.h"

@implementation MapPresenter
typedef enum{
    AladinMap = 0,
    SkyMap = 1
}sources;

-(instancetype)init
{
    self = [super init];
    if(self)
    {
        [self initAndShowView:^(bool result)
        {
            [self updateViewWithStringData:[self.interactor getEntityDataFromSource:AladinMap]];
        }];
    }
    return self;
}

-(void)initAndShowView:(void (^)(bool))completion
{
    self.view = [[MapViewController alloc] init];
    self.interactor = [[MapInteractor alloc] init];
    [self.view initAndShowView:^(bool result) {
        completion(YES);
    }];
}

-(void)updateViewWithStringData:(NSString *)data
{
    [self.view  updateViewWithStringData:data];
}

-(void)getViewUpdates
{
    
}

@end
