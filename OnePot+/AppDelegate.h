//
//  AppDelegate.h
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 13..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate, SlideNavigationControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

+ (NSDate*)lastRunningDate;

@end

