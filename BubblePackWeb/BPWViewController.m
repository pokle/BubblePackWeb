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

    NSURLRequest *localRequest  = [NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]]];

    [webView loadRequest: localRequest];
    
    [self.view addSubview: webView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
