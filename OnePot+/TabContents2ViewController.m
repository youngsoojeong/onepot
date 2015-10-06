//
//  TabContents2ViewController.m
//  OnePot+
//
//  Created by JeongYoungsoo on 2015. 10. 7..
//  Copyright © 2015년 Youngsoo Jeong. All rights reserved.
//

#import "TabContents2ViewController.h"
#import "feedcellTableViewCell.h"

@interface TabContents2ViewController ()

@end

@implementation TabContents2ViewController
{
    NSArray *titleData;
    NSArray *subtitleData;
    NSArray *thumbnailImage;
    NSArray *profileImage;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Initialize table data
    titleData = [NSArray arrayWithObjects:@"Vegitable Mixed Rice", @"Beef Steak", @"Potato Pie", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", nil];
    // Do any additional setup after loading the view from its nib.
    subtitleData = [NSArray arrayWithObjects:@"My normal breakfast", @"For Today lunch", @"With your girlfriend", @"when you are hungry", @"daily desert", @"sweet desert", @"with americano", @"starbucks coffee beans", @"healthy food", @"I love noodle", @"Delicious Noodle", @"Sometimes I drink", @"My mother's favorite", @"For my girlfriend", @"for my love", nil];
    
    thumbnailImage = [NSArray arrayWithObjects:@"foodthumb1", @"foodthumb2", @"foodthumb3",@"foodthumb1", @"foodthumb2", @"foodthumb3",@"foodthumb1", @"foodthumb2", @"foodthumb3",@"foodthumb1", @"foodthumb2", @"foodthumb3",@"foodthumb1", @"foodthumb2", @"foodthumb3", nil];
    profileImage = [NSArray arrayWithObjects: @"userprofile1", @"userprofile2", @"userprofile3", @"userprofile4", @"userprofile5", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1", nil];
    
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [profileImage count];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
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
