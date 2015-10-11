//
//  APPChildViewController.m
//  PageApp
//
//  Created by Rafael Garcia Leiva on 10/06/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "APPChildViewController.h"

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
            [self.parentViewController.view setBackgroundColor:[UIColor redColor]];
        } completion:NULL];
        
    }else if(self.index == 1){
        
        [UIView animateWithDuration:0.5 animations:^{
            [self.parentViewController.view setBackgroundColor:[UIColor blueColor]];
        } completion:NULL];
        
        
    }else if(self.index == 2){
        [UIView animateWithDuration:0.5 animations:^{
            [self.parentViewController.view setBackgroundColor:[UIColor brownColor]];
        } completion:NULL];
        
        
    }
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
