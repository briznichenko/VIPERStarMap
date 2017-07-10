//
//  RootAssembler.h
//  VIPERStarMap
//
//  Created by briznichenko on 7/7/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface RootAssembler : NSObject


- (void)showRootViewController:(UIViewController *)viewController inWindow:(UIWindow *)window;
-(instancetype) initAndAssemble;

@end
