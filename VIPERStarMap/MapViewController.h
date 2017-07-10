//
//  MapViewController.h
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapView.h"
#import "MapProtocols.h"

@interface MapViewController : UIViewController
<PresenterProtocol, UIWebViewDelegate>

@property (strong, nonatomic) MapView* mapView;

@end
