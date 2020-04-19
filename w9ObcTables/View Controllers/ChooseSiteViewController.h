//
//  ChooseSiteViewController.h
//  w9ObcTables
//
//  Created by Sherwin on 2020-03-11.
//  Copyright © 2020 Sherwin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChooseSiteViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *listData;
    NSArray *siteData;
    NSArray *imageData;
    
}

@property(nonatomic,strong) NSArray *listData;
@property(nonatomic,strong) NSArray *siteData;
@property(nonatomic,strong) NSArray *imageData;



@end

NS_ASSUME_NONNULL_END
