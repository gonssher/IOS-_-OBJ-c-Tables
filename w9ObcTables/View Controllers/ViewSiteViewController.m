//
//  ViewSiteViewController.m
//  w9ObcTables
//
//  Created by Sherwin on 2020-03-11.
//  Copyright © 2020 Sherwin. All rights reserved.
//

#import "ViewSiteViewController.h"
#import "AppDelegate.h"
#import <WebKit/WebKit.h>
@interface ViewSiteViewController ()

@end

@implementation ViewSiteViewController
@synthesize webView,activity;

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation
{
    [activity setHidden:NO];
    [activity startAnimating];
    
}


- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation
{
    [activity setHidden:YES];
    [activity stopAnimating];
    
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    NSURL *urlAddress = [NSURL URLWithString:mainDelegate.selectedUrl];
    NSURLRequest *url = [NSURLRequest requestWithURL:urlAddress];
    [webView loadRequest:url];
    webView.navigationDelegate= self;
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
