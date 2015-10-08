// The MIT License (MIT)
//
// Copyright (c) 2015 FPT Software
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "TabContentViewController.h"
#import "feedcellTableViewCell.h"
#import "DetailViewController.h"

@interface TabContentViewController ()

@end

@implementation TabContentViewController
{
    NSArray *titleData;
    NSArray *subtitleData;
    NSArray *thumbnailImage;
    NSArray *profileImage;
}

- (void)viewDidLoad {
  [super viewDidLoad];
    // Initialize table data
    titleData = [NSArray arrayWithObjects:@"Vegitable Mixed Rice", @"Beef Steak", @"Potato Pie", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
  // Do any additional setup after loading the view from its nib.
    subtitleData = [NSArray arrayWithObjects:@"My normal breakfast", @"For Today lunch", @"With your girlfriend", @"when you are hungry", @"daily desert", @"sweet desert", @"with americano", @"starbucks coffee beans", @"healthy food", @"I love noodle", @"Delicious Noodle", @"Sometimes I drink", @"My mother's favorite", @"For my girlfriend", @"for my love", @"normal breakfast", nil];

    thumbnailImage = [NSArray arrayWithObjects:@"foodthumb1", @"foodthumb2", @"foodthumb3",@"foodthumb1", @"foodthumb2", @"foodthumb3",@"foodthumb1", @"foodthumb2", @"foodthumb3",@"foodthumb1", @"foodthumb2", @"foodthumb3",@"foodthumb1", @"foodthumb2", @"foodthumb3",@"foodthumb1", nil];
    profileImage = [NSArray arrayWithObjects: @"userprofile1", @"userprofile2", @"userprofile3", @"userprofile4", @"userprofile5", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1", @"userprofile1",@"userprofile1", nil];


}

- (void)viewWillAppear:(BOOL)animated {
    [[SlideNavigationController sharedInstance].navigationBar setTranslucent:YES];
    [[SlideNavigationController sharedInstance].navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [[SlideNavigationController sharedInstance].navigationBar setOpaque:YES];
    [SlideNavigationController sharedInstance].navigationBar.hidden = NO;
    
    [SlideNavigationController sharedInstance].navigationBar.barTintColor = [UIColor blackColor];
    [SlideNavigationController sharedInstance].navigationBar.tintColor = [UIColor blackColor];
    [[SlideNavigationController sharedInstance].navigationBar
     setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor]}];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [profileImage count];
    
}
/*
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}*/

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



- (void)tableView:(UITableView *)tableUIView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *selected =[titleData objectAtIndex:indexPath.row];
    if ([selected isEqualToString:@"Vegitable Mixed Rice"]) {
        DetailViewController *v = [[DetailViewController alloc] init];
        [[SlideNavigationController sharedInstance] pushViewController:v animated:YES];
    }
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little
preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
