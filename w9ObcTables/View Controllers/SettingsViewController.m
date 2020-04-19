//
//  SettingsViewController.m
//  W9ObCTables
//
//  Created by Xcode User on 2020-03-09.
//  Copyright © 2020 Xcode User. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()


@end

@implementation SettingsViewController
@synthesize lbVol, slVol, sgDiff, lbDiff,lbEmail,tfName,tfEmail,lbName;


-(void) updateSegmentLabel{
    NSString *str = [sgDiff titleForSegmentAtIndex:sgDiff.selectedSegmentIndex];
    NSString *textLabel = [NSString stringWithFormat:@"Difficulty: %@", str];
    lbDiff.text = textLabel;
    
}



-(void)updateSliderLabel{
    float vol = slVol.value;
    NSString *strVol = [NSString stringWithFormat:@"%.2f",vol];
    lbVol.text = strVol;
}
-(IBAction)savedata:(id)sender{
    lbName.text = tfName.text;
    [lbEmail setText:[tfEmail text]];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    return [textField resignFirstResponder];
}

-(IBAction)sliderValueChanged:(id)sender{
    [self updateSliderLabel];
}

-(IBAction)segmentDidChange:(id)sender{
    [self updateSegmentLabel];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateSliderLabel];
    [self updateSegmentLabel];
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
