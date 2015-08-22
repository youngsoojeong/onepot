//
//  MainViewController.m
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 13..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import "MainViewController.h"
#import "editViewController.h"
#import "postViewController.h"

@interface MainViewController (){
    int currentValue;
    bool shouldStopCountDown;

}

@end

@implementation MainViewController
//네비게이션 안보이게하는 코드//
- (void)viewWillAppear:(BOOL)animated {
    [[SlideNavigationController sharedInstance].navigationBar setHidden:NO];
    [SlideNavigationController sharedInstance].enableSwipeGesture = YES;
    [[SlideNavigationController sharedInstance].navigationBar setTranslucent:YES];
    [[SlideNavigationController sharedInstance].navigationBar setBarStyle:UIBarStyleBlackOpaque];
    [[SlideNavigationController sharedInstance].navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
}


- (void)viewDidLoad {
    currentValue = 10;
    shouldStopCountDown = NO;
    
    self.percentageDoughnut.textStyle               = MCPercentageDoughnutViewTextStyleUserDefined;
    self.percentageDoughnut.percentage              = .1;
    self.percentageDoughnut.linePercentage          = 0.08;
    self.percentageDoughnut.animationDuration       = 1;
    self.percentageDoughnut.showTextLabel           = YES;
    self.percentageDoughnut.animatesBegining        = YES;
    self.percentageDoughnut.textLabel.textColor     = [[UIColor colorWithRed:1 green:.372 blue:0 alpha:0] colorWithAlphaComponent:0];
    self.percentageDoughnut.textLabel.text          = [NSString stringWithFormat:@"%d", currentValue];
    self.percentageDoughnut.textLabel.font          = [UIFont systemFontOfSize:5];
}

- (IBAction)countDown:(id)sender {
    currentValue -= 1;
    self.percentageDoughnut.textLabel.text = [NSString stringWithFormat:@"%d", currentValue];
    self.percentageDoughnut.percentage = (float)currentValue/100.0;
    
    int min = currentValue / 60;
    int sec = currentValue % 60;
    
    [self.labelCountDown setText:[NSString stringWithFormat:@"%02d:%02d",min,sec]];
    
    if(currentValue<=0){
        [self.labelTimeremain setTextColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:.2]];

        [self.labelCountDown setTextColor:[UIColor colorWithRed:1 green:.32 blue:0 alpha:1]];
        [self.labelTimeremain setText:@"set cooking time"];
        self.percentageDoughnut.linePercentage          = 0.08;
        [self reset];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Finish Cook"
                                                       message:@"Do you want to save your recipe?"
                                                      delegate:self
                                             cancelButtonTitle:@"NO"    /* nil 로 지정할 경우 cancel button 없음 */
                                             otherButtonTitles:@"YES", nil];
        
        // alert창을 띄우는 method는 show이다.
        [alert show];
    }

}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    // OK 버튼을 눌렀을 때 버튼Index가 1로 들어감
    if (buttonIndex == 1) {
        NSLog(@"Clicked YES");
        [self presentViewController:[[postViewController alloc] init] animated:YES completion:nil];
    }
    else {
        
    }
}
- (IBAction)countMinus:(id)sender {
    currentValue += 1;
    self.percentageDoughnut.textLabel.text = [NSString stringWithFormat:@"%d", currentValue];
    self.percentageDoughnut.percentage = (float)currentValue/100.0;
    
    int min = currentValue / 60;
    int sec = currentValue % 60;
    
    [self.labelCountDown setText:[NSString stringWithFormat:@"%02d:%02d",min,sec]];
    

}
- (void)reset
{
    
    [self.buttonStartcount setTitle:@"Start Cook" forState:UIControlStateNormal];
    [self.buttonStartcount setBackgroundColor:[UIColor colorWithRed:.2 green:.2 blue:.2 alpha:.2]];
    [self.buttonStartcount setTitleColor:[UIColor colorWithRed:1 green:.32 blue:0 alpha:1] forState:UIControlStateNormal];
    [self.buttonRecipe setHidden:NO];
}

- (IBAction)startAutomaticCountDown:(id)sender {
    if(shouldStopCountDown){
    
    shouldStopCountDown = NO;
    [self.buttonRecipe setHidden:YES];
    [self.buttonStartcount setTitle:@"Pause Cook" forState:UIControlStateNormal];
    [self.buttonStartcount setBackgroundColor:[UIColor colorWithRed:1 green:.32 blue:(0) alpha:1]];
    [self.buttonStartcount setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    self.percentageDoughnut.linePercentage =1;
        
        //스트로크 에니메이션
       
         
    [MCUtil runOnAuxiliaryQueue:^{
        while (currentValue >= 1 && !shouldStopCountDown)
        {
            [MCUtil runOnMainQueue:^{
                [self countDown:nil];
            }];
            [NSThread sleepForTimeInterval:1];
        }
    }];
    }else{
        shouldStopCountDown = YES;
        [self.labelTimeremain setText:@"time remaining"];
        [self.labelTimeremain setTextColor:[UIColor whiteColor]];
        [self.labelCountDown setTextColor:[UIColor whiteColor]];

        [self.buttonStartcount setTitle:@"Start Cook" forState:UIControlStateNormal];
        [self.buttonStartcount setBackgroundColor:[UIColor colorWithRed:.2 green:.2 blue:.2 alpha:.2]];
        [self.buttonStartcount setTitleColor:[UIColor colorWithRed:1 green:.32 blue:0 alpha:1] forState:UIControlStateNormal];
        self.percentageDoughnut.linePercentage          = 0.08;
        [MCUtil runOnAuxiliaryQueue:^{
            while (currentValue >= 1 && !shouldStopCountDown)
            {
                [MCUtil runOnMainQueue:^{
                    [self countDown:nil];
                }];
                [NSThread sleepForTimeInterval:1];
            }
        }];
    }

}
- (IBAction)buttonSetcook:(id)sender {
    
    [self setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:[[editViewController alloc] init] animated:YES completion:nil];
    /*[[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[editViewController alloc] init] withCompletion:^{
        
    }];*/
    
}

-(IBAction)buttonNextpot:(id)sender{
    [self.labelPotname setText:@"Fryer Pot"];
}

-(IBAction)buttonBeforepot:(id)sender{
    [self.labelPotname setText:@"Rice Pot"];
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
#pragma mark SlideNavigationControllerDelegate

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
    return YES;
}

- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return NO;
}


@end
