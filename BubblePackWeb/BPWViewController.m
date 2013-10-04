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

    
    UIWebView* webView = [[UIWebView alloc] initWithFrame: self.view.frame];

    NSURLRequest* urlRequest = [NSURLRequest requestWithURL: [NSURL URLWithString: @"http://google.com/" ]];
    [webView loadRequest: urlRequest];
    
    [self.view addSubview: webView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
