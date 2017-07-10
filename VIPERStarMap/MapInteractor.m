//
//  MapInteractor.m
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import "MapInteractor.h"
#import "MapEntity.h"

@implementation MapInteractor

-(instancetype)init
{
    self = [super init];
    if(self)
        self.entity = [MapEntity new];
    return self;
}

-(NSString *)getSkyMapSource
{
    return [self.entity getSkyMapSource];
}

-(NSString *)getAladinMapSource
{
    return [self.entity getAladinMapSource];
}

-(NSString *)getEntityDataFromSource:(BOOL) source
{
    return source? [self getSkyMapSource] : [self getAladinMapSource];
}

-(void)setEntityData:(NSString*) data
{
    
}

@end
