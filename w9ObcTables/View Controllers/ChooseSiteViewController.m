//
//  ChooseSiteViewController.m
//  w9ObcTables
//
//  Created by Sherwin on 2020-03-11.
//  Copyright © 2020 Sherwin. All rights reserved.
//

#import "ChooseSiteViewController.h"
#import "SiteCell.h"
#import "AppDelegate.h"
@interface ChooseSiteViewController ()

@end

@implementation ChooseSiteViewController

@synthesize listData,siteData,imageData;



- (void)viewDidLoad {
    [super viewDidLoad];
    listData = [NSArray arrayWithObjects:@"Jays",@"Leafs",@"Raptors",@"Marlies",@"FC", nil];
    siteData = [NSArray arrayWithObjects:@"http://www.bluejays.com",@"http://www.torontomapleleafs.com",@"http://www.torontoraptors.com",@"http://wwww.marlies.ca",@"http://www.torontoofc.ca", nil];
    imageData = [NSArray arrayWithObjects:@"jays.jpg",@"leafs.png",@"raptors.jps",@"marlies.jpeg",@"fc.png", nil];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return listData.count;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 60;
    
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    SiteCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil)
    {
        cell = [[SiteCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
        
    }
   // cell.textLabel.text = [listData objectAtIndex:indexPath.row];
    cell.primaryLabel.text = [listData objectAtIndex:indexPath.row];
    cell.secondaryLabel.text = [siteData objectAtIndex:indexPath.row];
    cell.myImageView.image = [UIImage imageNamed:[imageData objectAtIndex:indexPath.row]];
    
    
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

-(IBAction) unwindToChooseVc :(UIStoryboardSegue *)sender
{
    
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    mainDelegate.selectedUrl = [siteData objectAtIndex:indexPath.row];
    
    [self performSegueWithIdentifier:@"ChooseSegueToView" sender:self];
    
    
    
    
}




@end
