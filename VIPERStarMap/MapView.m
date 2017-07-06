//
//  MapView.m
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import "MapView.h"

@implementation MapView

- (instancetype) initAndInstallIntoParentViewController: (UIViewController*) parentViewController
{
    self = [super init];
    if(self)
    {
        [self makeView];
        [self makeOuterConstraints:parentViewController.view];
    }
    return self;
}

- (void) makeView
{
    [self makeMap];
    [self makeSearch];
    [self makeInnerConstraints];
}

- (void) makeMap
{
    self.mapView = [UIWebView new];
    [self addSubview:self.mapView];
}

- (void) makeSearch
{
    self.searchField = [UITextField new];
    self.searchButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [self addSubview:self.searchField];
    [self addSubview:self.searchButton];
}

- (void) makeInnerConstraints
{
    float searchFieldWidth = 0.9f;
    
    self.searchField.translatesAutoresizingMaskIntoConstraints = NO;
    self.searchButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.mapView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.searchField.topAnchor constraintEqualToAnchor:self.topAnchor],
                                              [self.searchField.leftAnchor constraintEqualToAnchor:self.leftAnchor],
                                              [self.searchField.widthAnchor constraintEqualToAnchor:self.widthAnchor multiplier:searchFieldWidth],
                                              
                                              [self.searchButton.topAnchor constraintEqualToAnchor:self.topAnchor],
                                              [self.searchButton.rightAnchor constraintEqualToAnchor:self.rightAnchor],
                                              [self.searchButton.widthAnchor constraintEqualToAnchor:self.widthAnchor multiplier: 1.0f - searchFieldWidth],
                                              [self.searchButton.heightAnchor constraintEqualToAnchor:self.searchField.heightAnchor],
                                              
                                              [self.mapView.topAnchor constraintEqualToAnchor:self.searchField.topAnchor],
                                              [self.mapView.widthAnchor constraintEqualToAnchor:self.widthAnchor],
                                              [self.mapView.heightAnchor constraintEqualToConstant:self.frame.size.height - self.searchField.frame.size.height]
                                              ]];
}

- (void) makeOuterConstraints: (UIView*) parentView
{
    [parentView addSubview:self];
    
    self.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [self.topAnchor constraintEqualToAnchor:parentView.topAnchor],
                                              [self.centerXAnchor constraintEqualToAnchor:parentView.centerXAnchor],
                                              [self.widthAnchor constraintEqualToAnchor:parentView.widthAnchor],
                                              [self.heightAnchor constraintEqualToAnchor:parentView.heightAnchor]
                                              ]];
}

@end
