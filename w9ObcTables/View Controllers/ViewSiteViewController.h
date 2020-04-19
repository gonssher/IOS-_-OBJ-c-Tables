//
//  ViewSiteViewController.h
//  w9ObcTables
//
//  Created by Sherwin on 2020-03-11.
//  Copyright © 2020 Sherwin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface ViewSiteViewController : UIViewController<WKNavigationDelegate>
{
    IBOutlet WKWebView *webView;
    IBOutlet UIActivityIndicatorView *activity;
    
    
}
@property (nonatomic,strong)IBOutlet WKWebView *webView;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activity;
@end

NS_ASSUME_NONNULL_END
