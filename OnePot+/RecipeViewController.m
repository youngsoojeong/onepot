//
//  RecipeViewController.m
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 14..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import "RecipeViewController.h"
#import "iOSUILib/MDTabBarViewController.h"
#import "TabContentViewController.h"
#import "RecommendViewController.h"

@interface RecipeViewController ()<
    MDTabBarViewControllerDelegate>

@end

@implementation RecipeViewController{
    MDTabBarViewController *recipeViewController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildViewController:recipeViewController];
    [self.view addSubview:recipeViewController.view];
    [recipeViewController didMoveToParentViewController:self];
    UIView *controllerView = recipeViewController.view;
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
    recipeViewController = [[MDTabBarViewController alloc] initWithDelegate:self];
    NSArray *names = @[
                       @"Recommends",
                       @"News",
                       @"Ranking",
                      
                       
                       ];
    [recipeViewController setItems:names];
}


- (UIViewController *)tabBarViewController:
(MDTabBarViewController *)viewController
                     viewControllerAtIndex:(NSUInteger)index {
    if(index==0){
        RecommendViewController *controller =
        [[RecommendViewController alloc] init];
       
        
        /* Library code */
        //self.shyNavBarManager.scrollView = controller.newsTableView;
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
        });
        return controller;
    }else{
        
        
        TabContentViewController *controller =
        
        [[TabContentViewController alloc] init];    dispatch_async(dispatch_get_main_queue(), ^{
            
        });
        
        /* Library code */
        //self.shyNavBarManager.scrollView = controller.tableView;
        return controller;
    }
    
}

- (void)tabBarViewController:(MDTabBarViewController *)viewController
              didMoveToIndex:(NSUInteger)index {
}
/**
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}**/

#pragma mark SlideNavigationControllerDelegate

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
    return YES;
}

- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return NO;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
