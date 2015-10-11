//
//  RecommendViewController.m
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 10. 6..
//  Copyright © 2015년 Youngsoo Jeong. All rights reserved.
//

#import "RecommendViewController.h"
#import "NewsViewController.h"
#import "editViewController.h"

@interface RecommendViewController ()

@end

@implementation RecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonNews:(id)sender {
    
}
- (IBAction)buttonRecipe:(id)sender {
    [self setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:[[editViewController alloc] init] animated:YES completion:nil];
    /*[[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[editViewController alloc] init] withCompletion:^{
     
     }];*/
    
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
