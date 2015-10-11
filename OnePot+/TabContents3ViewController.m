//
//  TabContents3ViewController.m
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 10. 11..
//  Copyright © 2015년 Youngsoo Jeong. All rights reserved.
//

#import "TabContents3ViewController.h"
#import "feedcellTableViewCell.h"

@interface TabContents3ViewController ()

@end

@implementation TabContents3ViewController

{
    NSArray *titleData;
    NSArray *subtitleData;
    NSArray *thumbnailImage;
    NSArray *profileImage;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Initialize table data
    titleData = [NSArray arrayWithObjects: @"Beef Steak", @"Potato Pie", @"Creme Brelee", @"White Chocolate Donut", @"Korean Chicken Soup", @"Fried Rice", @"Thai Rice Cake", nil];
    // Do any additional setup after loading the view from its nib.
    subtitleData = [NSArray arrayWithObjects: @"With your girlfriend", @"sweet desert", @"with americano", @"healthy food", @"Sometimes I drink", @"My mother's favorite", @"For my girlfriend", nil];
    
    thumbnailImage = [NSArray arrayWithObjects: @"foodthumb2", @"foodthumb3",@"CremeBrelee", @"WhiteChocolateDonut", @"Rice3",@"Rice2", @"Rice4", nil];
    profileImage = [NSArray arrayWithObjects: @"pro11", @"pro14", @"pro15", @"userprofile4", @"pro17", @"pro13", @"pro12", nil];
    
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [profileImage count];
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"feedcellTableViewCell";
    
    feedcellTableViewCell *cell = (feedcellTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"feedcellTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.feedtitleLabel.text=[titleData objectAtIndex:indexPath.row];
    cell.subtitleLabel.text=[subtitleData objectAtIndex:indexPath.row];
    cell.userImage.image = [UIImage imageNamed:[profileImage objectAtIndex:indexPath.row]];
    cell.thumbImage.image = [UIImage imageNamed:[thumbnailImage objectAtIndex:indexPath.row]];
    
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
