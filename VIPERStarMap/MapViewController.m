//
//  MapViewController.m
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import "MapViewController.h"
#import "MapView.h"

@interface MapViewController ()
@property (strong, nonatomic) MapView* mapView;
@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _mapView = [[MapView alloc] initAndInstallIntoParentViewController:self];
}

@end
