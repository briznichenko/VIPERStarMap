//
//  MapProtocols.h
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MapProtocols <NSObject>

@end

@protocol PresenterProtocol <NSObject>

-(void)initAndShowView: (void(^)(bool result))completion;
-(void)updateViewWithStringData:(NSString*) data;
-(void)getViewUpdates;

@end

@protocol InteractorProtocol <NSObject>

-(NSString *)getEntityDataFromSource:(BOOL) source;
-(void)setEntityData:(NSString*) data;

@end

@protocol EntityProtocol <NSObject>

-(NSString*)getSkyMapSource;
-(NSString*)getAladinMapSource;

@end

@protocol WireframeProtocol <NSObject>

//TODO

@end

@protocol RouterProtocol <NSObject>

//TODO

@end


