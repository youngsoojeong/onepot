//
//  ProfileViewController.m
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 13..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController
//네비게이션 안보이게하는 코드//
- (void)viewWillAppear:(BOOL)animated {
    [[SlideNavigationController sharedInstance].navigationBar setTranslucent:YES];
   // [[SlideNavigationController sharedInstance].navigationBar setBackgroundImage:[UIImage imageNamed:@"nav"] forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIButton *button  = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [button setImage:[UIImage imageNamed:@"menu"] forState:UIControlStateNormal];
    [button addTarget:[SlideNavigationController sharedInstance] action:@selector(toggleLeftMenu) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    [SlideNavigationController sharedInstance].leftBarButtonItem = leftBarButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**FoodButton**/
-(IBAction)onClickRecipe:(id)sender{
    [self.ImageSection setImage:[UIImage imageNamed:@"recipeImage"]];
    //Time Line Button바꾸기
    [self.timeBack setBackgroundColor:[UIColor colorWithRed:.96 green:.96 blue:.96 alpha:1]];
    [self.timeLabel setTextColor:[UIColor colorWithRed:.33 green:.33 blue:.33 alpha:1]];
    [self.timeNum setTitleColor:[UIColor colorWithRed:.33 green:.33 blue:.33 alpha:1] forState:UIControlStateNormal];
    //Food Button 바꾸기
    [self.foodBack setBackgroundColor:[UIColor colorWithRed:1 green:.4 blue:.4 alpha:1]];
    [self.foodLabel setTextColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1]];
    [self.foodNum setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    //Pic Button 바꾸기
    [self.picBack setBackgroundColor:[UIColor colorWithRed:.96 green:.96 blue:.96 alpha:1]];
    [self.picLabel setTextColor:[UIColor colorWithRed:.33 green:.33 blue:.33 alpha:1]];
    [self.picNum setTitleColor:[UIColor colorWithRed:.33 green:.33 blue:.33 alpha:1] forState:UIControlStateNormal];
}

#pragma mark SlideNavigationControllerDelegate

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
    return YES;
}

- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return NO;
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
