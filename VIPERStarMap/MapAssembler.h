//
//  MapAssembler.h
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RootAssembler.h"
#import "MapViewController.h"
#import "MapInteractor.h"
#import "MapPresenter.h"
#import "MapEntity.h"
#import "MapRouter.h"

@interface MapAssembler : RootAssembler

@property (strong, nonatomic) MapPresenter* presenter;

@end
