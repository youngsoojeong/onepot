//
//  LeftMenuViewController.m
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 13..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import "LeftMenuViewController.h"
#import "MainViewController.h"
#import "ProfileViewController.h"
#import "FeedViewController.h"
#import "RecipeViewController.h"
#import "SettingViewController.h"
#import "LoginViewController.h"
#import "TabBarViewControllerViewController.h"
@interface LeftMenuViewController ()

@end

@implementation LeftMenuViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonMain:(id)sender {
    [[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[MainViewController alloc] init] withCompletion:^{
        
    
}];
    
    [self.buttonMain setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [self.buttonProfile setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonFeeds setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonRecipe setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonSetting setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    
}


- (IBAction)buttonProfile:(id)sender {
    [[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[ProfileViewController alloc] init] withCompletion:^{
        
    }];
    [self.buttonProfile setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [self.buttonMain setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonFeeds setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonRecipe setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonSetting setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];

}
- (IBAction)buttonFeed:(id)sender {
    [[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[TabBarViewControllerViewController alloc] init] withCompletion:^{
    
}];
    [self.buttonFeeds setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [self.buttonProfile setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonMain setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonRecipe setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonSetting setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
}

- (IBAction)buttonRecipe:(id)sender {    [[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[RecipeViewController alloc] init] withCompletion:^{
    
}];
    [self.buttonRecipe setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [self.buttonProfile setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonFeeds setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonMain setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonSetting setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
}
- (IBAction)buttonSetting:(id)sender {
    [[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[SettingViewController alloc] init] withCompletion:^{
        
    }];
    [self.buttonSetting setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [self.buttonProfile setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonFeeds setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonRecipe setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
    [self.buttonMain setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] forState:UIControlStateNormal];
}
- (IBAction)buttonLogout:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Log Out"
                                                   message:@"밥은 먹고다니세요?"
                                                  delegate:self
                                         cancelButtonTitle:@"NO"    /* nil 로 지정할 경우 cancel button 없음 */
                                         otherButtonTitles:@"YES", nil];
    
    // alert창을 띄우는 method는 show이다.
    [alert show];




    /*[[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[LoginViewController alloc] init] withCompletion:^{
        
    }];*/
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    // OK 버튼을 눌렀을 때 버튼Index가 1로 들어감
    if (buttonIndex == 1) {
        [[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[LoginViewController alloc] init] withCompletion:^{
            
        }];
    }
    else {
        
    }
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
