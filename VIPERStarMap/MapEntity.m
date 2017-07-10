//
//  MapSource.m
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import "MapEntity.h"

@implementation MapEntity

-(NSString *)getSkyMapSource
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"SkyMap" ofType:@"html"];
    
    return path;
}

-(NSString *)getAladinMapSource
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"AladinMap" ofType:@"html"];
    
    return path;
}

@end
