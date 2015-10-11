//
//  APPChildViewController.m
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 10. 11..
//  Copyright © 2015년 Youngsoo Jeong. All rights reserved.
//
#import "APPChildViewController.h"
#import "signViewController.h"
#import "signinViewController.h"
#import "LoginViewController.h"

@interface APPChildViewController ()

@end

@implementation APPChildViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization
    }
    
    return self;
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSString *name = [NSString stringWithFormat:@"pot-%ld",self.index+1];
    [self.imagePot setImage:[UIImage imageNamed:name]];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    
    NSLog(@"viewWillAppear %ld", self.index);
    if(self.index == 0){
        
        [UIView animateWithDuration:0.5 animations:^{
            [self.parentViewController.view setBackgroundColor:[UIColor colorWithRed:0.5 green:0.5 blue:0.58 alpha:1]];
        } completion:NULL];
        
    }else if(self.index == 1){
        
        [UIView animateWithDuration:0.5 animations:^{
            [self.parentViewController.view setBackgroundColor:[UIColor colorWithRed:0.42 green:.49 blue:.74 alpha:1]];
        } completion:NULL];
        
        
    }else if(self.index == 2){
        [UIView animateWithDuration:0.5 animations:^{
            [self.parentViewController.view setBackgroundColor:[UIColor colorWithRed:.98 green:.41 blue:.41 alpha:1]];
        } completion:NULL];
    }else if(self.index==3){
        [UIView animateWithDuration:0.5 animations:^{
            [self.parentViewController.view setBackgroundColor:[UIColor colorWithRed:.27 green:.8 blue:.8 alpha:1]];
        } completion:NULL];
    }else if(self.index==4){
        [UIView animateWithDuration:0.5 animations:^{
            [self.parentViewController.view setBackgroundColor:[UIColor colorWithRed:.4 green:.4 blue:.4 alpha:1]];
        } completion:NULL];
    }
        
    
}
- (IBAction)buttonNext:(id)sender {
    [[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[LoginViewController alloc] init] withCompletion:^{
        
    }];

}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
