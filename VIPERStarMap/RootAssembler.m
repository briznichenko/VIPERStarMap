//
//  RootAssembler.m
//  VIPERStarMap
//
//  Created by briznichenko on 7/7/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import "RootAssembler.h"

@implementation RootAssembler

-(instancetype)initAndAssemble
{
    self = [super init];
    if(self)
    {
        
    }
    return self;
}

- (void)showRootViewController:(UIViewController *)viewController inWindow:(UIWindow *)window
{
    window.rootViewController = viewController;
}

@end
