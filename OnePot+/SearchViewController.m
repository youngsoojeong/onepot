//
//  SearchViewController.m
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 10. 6..
//  Copyright © 2015년 Youngsoo Jeong. All rights reserved.
//

#import "SearchViewController.h"
#import "TabBarViewControllerViewController.h"


@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**되돌아가기 **/
- (IBAction)buttonExit:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
/**Pot 부분 필터 아이콘 변경하기 **/

-(IBAction)buttonCheck1:(id)sender{
    [self.buttonCheck1 setBackgroundImage:[UIImage imageNamed:@"CheckOk"]forState:UIControlStateNormal];
    [self.buttonCheck2 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
    [self.buttonCheck3 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
}
- (IBAction)buttonCheck2:(id)sender {
    [self.buttonCheck1 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
    [self.buttonCheck2 setBackgroundImage:[UIImage imageNamed:@"CheckOk"]forState:UIControlStateNormal];
    [self.buttonCheck3 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
}
- (IBAction)buttonCheck3:(id)sender {
    [self.buttonCheck1 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
    [self.buttonCheck2 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
    [self.buttonCheck3 setBackgroundImage:[UIImage imageNamed:@"CheckOk"]forState:UIControlStateNormal];
}
/** Time 부분 필터 아이콘 변경하기 **/
- (IBAction)buttonCheck4:(id)sender {
    [self.buttonCheck4 setBackgroundImage:[UIImage imageNamed:@"CheckOk"]forState:UIControlStateNormal];
    [self.buttonCheck5 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
    [self.buttonCheck6 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
}

- (IBAction)buttonCheck5:(id)sender {
    [self.buttonCheck4 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
    [self.buttonCheck5 setBackgroundImage:[UIImage imageNamed:@"CheckOk"]forState:UIControlStateNormal];
    [self.buttonCheck6 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];

}

- (IBAction)buttonCheck6:(id)sender {
    [self.buttonCheck4 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
    [self.buttonCheck5 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
    [self.buttonCheck6 setBackgroundImage:[UIImage imageNamed:@"CheckOk"]forState:UIControlStateNormal];

}


/** Food Type부분 필터 아이콘 변경하기 **/

- (IBAction)buttonCheck7:(id)sender {
    [self.buttonCheck7 setBackgroundImage:[UIImage imageNamed:@"CheckOk"]forState:UIControlStateNormal];
    [self.buttonCheck8 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
    [self.buttonCheck9 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];

}

- (IBAction)buttonCheck8:(id)sender {
    [self.buttonCheck7 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
    [self.buttonCheck8 setBackgroundImage:[UIImage imageNamed:@"CheckOk"]forState:UIControlStateNormal];
    [self.buttonCheck9 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
}

- (IBAction)buttonCheck9:(id)sender {
    [self.buttonCheck7 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
    [self.buttonCheck8 setBackgroundImage:[UIImage imageNamed:@"CheckNo"]forState:UIControlStateNormal];
    [self.buttonCheck9 setBackgroundImage:[UIImage imageNamed:@"CheckOk"]forState:UIControlStateNormal];
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
