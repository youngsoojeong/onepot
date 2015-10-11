//
//  APPChildViewController.h
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 10. 11..
//  Copyright © 2015년 Youngsoo Jeong. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface APPChildViewController : UIViewController

@property (assign, nonatomic) NSInteger index;
@property (strong, nonatomic) IBOutlet UIImageView *imagePot;

@property (strong, nonatomic) UIPageViewController *pageController;

@end
