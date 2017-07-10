//
//  MapView.h
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapView : UIView

@property (nonatomic, strong) UIWebView* map;
@property (nonatomic, strong) UITextField *searchField;
@property (nonatomic, strong) UIButton *searchButton;

- (instancetype) initAndInstallIntoParentViewController: (UIViewController*) parentViewController;

@end
