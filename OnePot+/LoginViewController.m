//
//  LoginViewController.m
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 14..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import "LoginViewController.h"
#import "MainViewController.h"
#import "signViewController.h"
#import "signinViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
//네비게이션 안보이게하는 코드//
- (void)viewWillAppear:(BOOL)animated {
    [[SlideNavigationController sharedInstance].navigationBar setHidden:YES];
    [SlideNavigationController sharedInstance].enableSwipeGesture = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)buttonLogin1:(id)sender {
    
    [self setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:[[signViewController alloc] init] animated:YES completion:nil];
    /*[[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[signViewController alloc] init] withCompletion:^{
    
}];*/
}
- (IBAction)buttonLogin:(id)sender {
    [[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[MainViewController alloc] init] withCompletion:^{
        
    }];
}


- (IBAction)buttonSignin:(id)sender {
    
    [self setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:[[signinViewController alloc] init] animated:YES completion:nil];
    /*[[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[signinViewController alloc] init] withCompletion:^{
     
     }];*/
    
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
