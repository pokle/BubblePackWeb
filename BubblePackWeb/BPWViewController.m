//
//  BPWViewController.m
//  BubblePackWeb
//
//  Created by Tushar Pokle on 4/10/13.
//  Copyright (c) 2013 Tushar Pokle. All rights reserved.
//

#import "BPWViewController.h"

@interface BPWViewController ()

@end

@implementation BPWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSLog(@"resource path=%@", NSBundle.mainBundle.resourcePath);
    
    
    UIWebView* webView = [[UIWebView alloc] initWithFrame: self.view.frame];

    webView.delegate = self;
    
    NSURL *indexURL = [NSURL fileURLWithPath:[[[NSBundle mainBundle]  resourcePath] stringByAppendingPathComponent: @"www/index.html"]];
    NSLog(@"indexURL: %@", indexURL);
    NSURLRequest *localRequest  = [NSURLRequest requestWithURL: indexURL];
    [webView loadRequest: localRequest];
    
    [self.view addSubview: webView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UIWebDelegate implementation


- (BOOL) webView:(UIWebView*)theWebView shouldStartLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSURL *url = [request URL];
    
    if ([[url scheme] isEqualToString: @"file"]) {
        return YES;
    } else {
        [[UIApplication sharedApplication] openURL:url];
        return NO;
    }
}

#pragma end

@end
