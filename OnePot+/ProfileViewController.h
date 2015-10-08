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



@property (weak, nonatomic) IBOutlet UIImageView *ImageSection;

/**Time Button**/

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIButton *timeNum;
@property (weak, nonatomic) IBOutlet UIButton *timeBack;

/**Recipe Button**/
@property (weak, nonatomic) IBOutlet UILabel *foodLabel;
@property (weak, nonatomic) IBOutlet UIButton *foodNum;
@property (weak, nonatomic) IBOutlet UIButton *foodBack;



/**Pic Button**/
@property (weak, nonatomic) IBOutlet UILabel *picLabel;
@property (weak, nonatomic) IBOutlet UIButton *picNum;
@property (weak, nonatomic) IBOutlet UIButton *picBack;


/**FoodButoon**/

-(IBAction)onClickRecipe:(id)sender;

@end
