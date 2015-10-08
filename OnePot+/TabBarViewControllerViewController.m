// The MIT License (MIT)
//
// Copyright (c) 2015 FPT Software
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "TabBarViewControllerViewController.h"
#import "iOSUILib/MDTabBarViewController.h"
#import "TabContentViewController.h"
#import "SearchViewController.h"
#import "TabContents2ViewController.h"

@interface TabBarViewControllerViewController () <
    MDTabBarViewControllerDelegate>

@end

@implementation TabBarViewControllerViewController {
  MDTabBarViewController *tabBarViewController;
}
//네비게이션 안보이게하는 코드//
- (void)viewWillAppear:(BOOL)animated {
    [[SlideNavigationController sharedInstance].navigationBar setHidden:NO];
    [SlideNavigationController sharedInstance].enableSwipeGesture = YES;
    [[SlideNavigationController sharedInstance].navigationBar setTranslucent:YES];
    [[SlideNavigationController sharedInstance].navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
}


- (instancetype)init {
  if (self = [super init]) {
    [self initContent];
  }

  return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
  if (self = [super initWithCoder:aDecoder]) {
    [self initContent];
  }

  return self;
}

//- (instancetype)initWithNibName:(NSString *)nibNameOrNil
//                         bundle:(NSBundle *)nibBundleOrNil {
//  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
//    [self initContent];
//  }
//
//  return self;
//}

- (void)initContent {
  tabBarViewController = [[MDTabBarViewController alloc] initWithDelegate:self];
  NSArray *names = @[
    @"All",
    @"Rice Pot",
    @"Fryer Pot",
    @"Water Pot",
   
  ];
    [tabBarViewController setItems:names];
    [tabBarViewController.view setBackgroundColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1]];
    [tabBarViewController.view.subviews[0] setBackgroundColor:[UIColor whiteColor]];
    
    [tabBarViewController.view.subviews[1] setBackgroundColor:[UIColor clearColor]];
  [tabBarViewController setItems:names];
}

- (void)viewDidLoad {
  [super viewDidLoad];

  [self addChildViewController:tabBarViewController];
  [self.view addSubview:tabBarViewController.view];
  [tabBarViewController didMoveToParentViewController:self];
  UIView *controllerView = tabBarViewController.view;
  id<UILayoutSupport> rootTopLayoutGuide = self.topLayoutGuide;
  id<UILayoutSupport> rootBottomLayoutGuide = self.bottomLayoutGuide;
  NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(
      rootTopLayoutGuide, rootBottomLayoutGuide, controllerView);

  [self.view
      addConstraints:[NSLayoutConstraint
                         constraintsWithVisualFormat:@"V:[rootTopLayoutGuide]["
                         @"controllerView][" @"rootBottomLayoutGuide]"
                                             options:0
                                             metrics:nil
                                               views:viewsDictionary]];
  [self.view
      addConstraints:[NSLayoutConstraint
                         constraintsWithVisualFormat:@"H:|[controllerView]|"
                                             options:0
                                             metrics:nil
                                               views:viewsDictionary]];
//타이틀 바이름  self.title = @"Feeds";
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (UIViewController *)tabBarViewController:
(MDTabBarViewController *)viewController
                     viewControllerAtIndex:(NSUInteger)index {
    if(index==0){
        TabContentViewController *controller =
        [[TabContentViewController alloc] init];
        
        
        /* Library code */
        //self.shyNavBarManager.scrollView = controller.newsTableView;
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
        });
        return controller;
    }else{
        
        
        TabContents2ViewController *controller =
        
        [[TabContents2ViewController alloc] init];    dispatch_async(dispatch_get_main_queue(), ^{
            
        });
        
        /* Library code */
        //self.shyNavBarManager.scrollView = controller.tableView;
        return controller;
    }
    
}

- (void)tabBarViewController:(MDTabBarViewController *)viewController
              didMoveToIndex:(NSUInteger)index {
}



-(IBAction) buttonSearch:(id)sender{
    [self setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:[[SearchViewController alloc] init] animated:YES completion:nil];
    /*[[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[editViewController alloc] init] withCompletion:^{
     
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



@end
