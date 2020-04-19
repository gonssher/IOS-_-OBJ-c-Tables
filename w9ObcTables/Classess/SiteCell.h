//
//  SiteCell.h
//  w9ObcTables
//
//  Created by Sherwin on 2020-03-11.
//  Copyright © 2020 Sherwin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SiteCell : UITableViewCell
{
    UILabel *primaryLabel;
    UILabel *secondaryLabel;
    UIImageView *myImageView;
    
    
    
    
    
}



@property (nonatomic,strong) UILabel *primaryLabel;
@property (nonatomic,strong) UILabel *secondaryLabel;
@property (nonatomic,strong) UIImageView *myImageView;




@end

NS_ASSUME_NONNULL_END
