//
//  MapViewController.m
//  VIPERStarMap
//
//  Created by user on 7/6/17.
//  Copyright © 2017 CHI. All rights reserved.
//

#import "MapViewController.h"


@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)updateViewWithStringData:(NSString *)data
{
    [self.mapView.map loadHTMLString: [NSString stringWithContentsOfFile:data
                                                                encoding:NSUTF8StringEncoding
                                                                   error:nil] baseURL:nil];
    NSString *html = [self.mapView.map stringByEvaluatingJavaScriptFromString:@"document.documentElement.innerHTML"]; ;
    NSLog(@"%@", html);
}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    NSString *html = [self.mapView.map stringByEvaluatingJavaScriptFromString:@"document.documentElement.innerHTML"]; ;
    NSLog(@"%@", html);
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSString *html = [self.mapView.map stringByEvaluatingJavaScriptFromString:@"document.documentElement.innerHTML"]; ;
    NSLog(@"%@", html);
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"Failure");
}

-(void)getViewUpdates
{
    
}

-(void)initAndShowView:(void (^)(bool))completion
{
    self.mapView = [[MapView alloc] initAndInstallIntoParentViewController:self];
    self.mapView.map.delegate = self;
    completion(YES);
}

@end
