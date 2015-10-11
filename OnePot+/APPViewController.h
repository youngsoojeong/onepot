//
//  APPViewController.h
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 10. 11..
//  Copyright © 2015년 Youngsoo Jeong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"


@interface APPViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageController;

@property (strong, nonatomic) UIView *thisView;




@end
