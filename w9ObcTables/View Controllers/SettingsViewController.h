 //
//  SettingsViewController.h
//  W9ObCTables
//
//  Created by Xcode User on 2020-03-09.
//  Copyright © 2020 Xcode User. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
// add UITextFieldDelegate to keyboard go away
@interface SettingsViewController : UIViewController<UITextFieldDelegate>


{
    
    IBOutlet UISlider *slVol;
    IBOutlet UILabel *lbVol;
    IBOutlet UISegmentedControl *sgDiff;
    IBOutlet UILabel *lbDiff;
    IBOutlet UITextField *tfName;
    IBOutlet UITextField *tfEmail;
    IBOutlet UILabel *lbName;
    IBOutlet UILabel *lbEmail;
    
}
@property (nonatomic, strong) IBOutlet UISlider *slVol;
@property (nonatomic, strong) IBOutlet UILabel *lbVol;
@property (nonatomic, strong) IBOutlet UISegmentedControl *sgDiff;
@property (nonatomic, strong) IBOutlet UILabel *lbDiff;
@property (nonatomic, strong) IBOutlet UITextField *tfName;
@property (nonatomic, strong) IBOutlet UITextField *tfEmail;
@property (nonatomic, strong) IBOutlet UILabel *lbName;
@property (nonatomic, strong) IBOutlet UILabel *lbEmail;

@end

NS_ASSUME_NONNULL_END
