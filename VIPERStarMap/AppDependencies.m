//
//  AppDependencies.m
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import "AppDependencies.h"

@interface AppDependencies()
@property (nonatomic, strong) MapAssembler *rootAssembler;
@end

@implementation AppDependencies

-(instancetype) init
{
    self = [super init];
    if(self)
        [self configureDependencies];
    return self;
}

-(void) configureDependencies
{
    self.rootAssembler = [[MapAssembler alloc] initAndAssemble];
}

- (void)installRootViewControllertInto:(UIWindow *) window
{
    window.rootViewController = self.rootAssembler.presenter.mapView;
}



@end
