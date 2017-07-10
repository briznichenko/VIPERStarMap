//
//  MapPresenter.h
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MapViewController.h"
#import "MapProtocols.h"

@class MapInteractor;

@interface MapPresenter : NSObject
<PresenterProtocol>

@property (strong, nonatomic) MapViewController* view;
@property (strong, nonatomic) MapInteractor* interactor;


@end
