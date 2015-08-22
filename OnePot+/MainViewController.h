//
//  MainViewController.h
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 13..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"
#import "MCPercentageDoughnutView.h"

@interface MainViewController : UIViewController <SlideNavigationControllerDelegate>


@property (weak, nonatomic) IBOutlet MCPercentageDoughnutView *percentageDoughnut;
@property (weak, nonatomic) IBOutlet UIButton *buttonStartcount;

@property (weak, nonatomic) IBOutlet UILabel *labelTimeremain;
@property (weak, nonatomic) IBOutlet UISlider *widthSlider;
@property (weak, nonatomic) IBOutlet UILabel *labelCountDown;
@property (weak, nonatomic) IBOutlet UILabel *labelPotname;
@property (weak, nonatomic) IBOutlet UISlider *percentageSlider;
@property (weak, nonatomic) IBOutlet UIButton *buttonRecipe;
@end


