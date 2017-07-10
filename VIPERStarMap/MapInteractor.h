//
//  MapInteractor.h
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapProtocols.h"

@class MapPresenter, MapEntity;

@interface MapInteractor : NSObject
<EntityProtocol, InteractorProtocol>

@property (nonatomic, strong) MapPresenter* presenter;
@property (nonatomic, strong) MapEntity* entity;


@end
