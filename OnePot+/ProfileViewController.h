//
//  ProfileViewController.h
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 13..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"

@interface ProfileViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *buttonFood;

@property (weak, nonatomic) IBOutlet UIImageView *ImageSection;

-(IBAction)onClickRecipe:(id)sender;

@end
