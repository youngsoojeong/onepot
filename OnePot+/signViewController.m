//
//  signViewController.m
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 15..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import "signViewController.h"
#import "MainViewController.h"
#import "LoginViewController.h"


@interface signViewController ()

@end

@implementation signViewController

- (void)viewDidLoad {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                              selector:@selector(keyboardWillAnimate:)
                                                  name:UIKeyboardWillShowNotification
                                                object:nil];
         
    [[NSNotificationCenter defaultCenter] addObserver:self
                                              selector:@selector(keyboardWillAnimate:)
                                                  name:UIKeyboardWillHideNotification
                                                object:nil];
    
    [super viewDidLoad];
    
    
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)keyboardWillAnimate:(NSNotification *)notification
{
    CGRect keyboardBounds;
    [[notification.userInfo valueForKey:UIKeyboardFrameEndUserInfoKey] getValue:&keyboardBounds];
    NSNumber *duration = [notification.userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey];
    NSNumber *curve = [notification.userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey];
    
    keyboardBounds = [self.view convertRect:keyboardBounds toView:nil];
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:[duration doubleValue]];
    [UIView setAnimationCurve:[curve intValue]];
    if([notification name] == UIKeyboardWillShowNotification)
    {
        [self.view setFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y - keyboardBounds.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    }
    else if([notification name] == UIKeyboardWillHideNotification)
    {
        [self.view setFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y + keyboardBounds.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    }
    [UIView commitAnimations];
}


- (void)_removeKeyboardNotification
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    
    //keyborad
    
    
    
    // Dispose of any resources that can be recreated.
}

// 영수의 텍스트바 다른 영역 선택할때 사라지게 하기
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //hides keyboard when another part of layout was touched
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (IBAction)textboxEmail:(id)sender {
  

  

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
- (IBAction)buttonSignup:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        [[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[MainViewController alloc] init] withCompletion:^{
            
        }];
    }];
    

}
- (IBAction)buttonCancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        [[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[LoginViewController alloc] init] withCompletion:^{
            
        }];
    }];}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
