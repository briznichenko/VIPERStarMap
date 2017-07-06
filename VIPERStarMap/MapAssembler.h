//
//  MapAssembler.h
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapViewController.h"
#import "MapInteractor.h"
#import "MapPresenter.h"
#import "MapEntity.h"
#import "MapRouter.h"

@interface MapAssembler : NSObject

@property (nonatomic, strong) MapViewController* view;
@property (nonatomic, strong) MapInteractor* interactor;
@property (nonatomic, strong) MapPresenter* presenter;
@property (nonatomic, strong) MapEntity* entity;
@property (nonatomic, strong) MapRouter* router;

-(instancetype) initAndAssemble;

@end
