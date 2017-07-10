//
//  AppDelegate.m
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import "AppDelegate.h"


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.dependencies = [[AppDependencies alloc] init];
    [self.dependencies installRootViewControllertInto:self.window];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
