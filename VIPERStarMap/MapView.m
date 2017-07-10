//
//  MapView.m
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import "MapView.h"

@implementation MapView
{
    UIColor *mainColor;
}

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
    self.backgroundColor = [UIColor whiteColor];
    mainColor = [UIColor colorWithRed:0.0f green:0.07450980392f blue:0.2f alpha:1.0f];
    
    [self makeMap];
    [self makeSearch];
    [self makeInnerConstraints];
}

- (void) makeMap
{
    self.map = [UIWebView new];
    self.map.backgroundColor = mainColor;
    self.map.scrollView.bounces = NO;
    
    [self addSubview:self.map];
}

- (void) makeSearch
{
    self.searchField = [UITextField new];
    
    self.searchField.layer.borderWidth = 0.5f;
    self.searchField.layer.borderColor = [UIColor blackColor].CGColor;
    self.searchField.backgroundColor = mainColor;
    
    self.searchButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.searchButton.backgroundColor = mainColor;
    
    self.searchButton.layer.borderWidth = 0.5f;
    self.searchButton.layer.borderColor = [UIColor blackColor].CGColor;
    
    [self addSubview:self.searchField];
    [self addSubview:self.searchButton];
}

- (void) makeInnerConstraints
{
    float searchFieldWidth = 0.9f;
    
    self.searchField.translatesAutoresizingMaskIntoConstraints = NO;
    self.searchButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.map.translatesAutoresizingMaskIntoConstraints = NO;
    
    [NSLayoutConstraint activateConstraints:
     @[[self.searchField.topAnchor constraintEqualToAnchor:self.topAnchor],
       [self.searchField.leftAnchor constraintEqualToAnchor:self.leftAnchor],
       [self.searchField.widthAnchor constraintEqualToAnchor:self.widthAnchor multiplier:searchFieldWidth],
       
       [self.searchButton.topAnchor constraintEqualToAnchor:self.topAnchor],
       [self.searchButton.rightAnchor constraintEqualToAnchor:self.rightAnchor],
       [self.searchButton.widthAnchor constraintEqualToAnchor:self.widthAnchor multiplier: 1.0f - searchFieldWidth],
       [self.searchButton.heightAnchor constraintEqualToAnchor:self.searchField.heightAnchor],
       
       [self.map.topAnchor constraintEqualToAnchor:self.searchField.bottomAnchor],
       [self.map.widthAnchor constraintEqualToAnchor:self.widthAnchor],
       [self.map.heightAnchor constraintGreaterThanOrEqualToAnchor:self.heightAnchor constant: - self.searchField.frame.size.height]]];
}

- (void) makeOuterConstraints: (UIView*) parentView
{
    float topSpacing = [UIApplication sharedApplication].statusBarFrame.size.height;
    [parentView addSubview:self];
    
    self.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:
     @[[self.topAnchor constraintGreaterThanOrEqualToAnchor:parentView.topAnchor constant:topSpacing],
       [self.centerXAnchor constraintEqualToAnchor:parentView.centerXAnchor],
       [self.widthAnchor constraintEqualToAnchor:parentView.widthAnchor],
       [self.heightAnchor constraintEqualToAnchor:parentView.heightAnchor]]];
}

@end
