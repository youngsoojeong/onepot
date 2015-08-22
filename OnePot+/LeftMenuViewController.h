//
//  LeftMenuViewController.h
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 13..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"

@interface LeftMenuViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIButton *buttonMain;
@property (weak, nonatomic) IBOutlet UIButton *buttonProfile;
@property (weak, nonatomic) IBOutlet UIButton *buttonFeeds;
@property (weak, nonatomic) IBOutlet UIButton *buttonRecipe;
@property (weak, nonatomic) IBOutlet UIButton *buttonSetting;

@property (weak, nonatomic) IBOutlet UIButton *mainVIew;
@property (weak, nonatomic) IBOutlet UIButton *profileView;
@property (weak, nonatomic) IBOutlet UIButton *feedView;
@property (weak, nonatomic) IBOutlet UIButton *recipeView;
@property (weak, nonatomic) IBOutlet UIButton *settingView;
@end
