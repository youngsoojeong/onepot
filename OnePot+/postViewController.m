//
//  postViewController.m
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 16..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import "postViewController.h"
#import "MainViewController.h"
#import "TGCamera.h"
#import "TGCameraViewController.h"
#import "TGCameraColor.h"

@interface postViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *photoView;

-(IBAction)takePhotoTapped;

@end


@implementation postViewController

- (void)viewDidLoad {
    
    //키보드 노티피케이션 센터 호출 추가
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                              selector:@selector(keyboardWillAnimate:)
                                                  name:UIKeyboardWillShowNotification
                                                object:nil];
         
    [[NSNotificationCenter defaultCenter] addObserver:self
                                              selector:@selector(keyboardWillAnimate:)
                                                  name:UIKeyboardWillHideNotification
                                                object:nil];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //TG Camera
    
    // save image at album
    [TGCamera setOption:kTGCameraOptionSaveImageToAlbum value:[NSNumber numberWithBool:YES]];
    
    // hidden toggle button
    //[TGCamera setOption:kTGCameraOptionHiddenToggleButton value:[NSNumber numberWithBool:YES]];
    //[TGCameraColor setTintColor: [UIColor greenColor]];
    
    // hidden album button
    //[TGCamera setOption:kTGCameraOptionHiddenAlbumButton value:[NSNumber numberWithBool:YES]];
    
    // hide filter button
    //[TGCamera setOption:kTGCameraOptionHiddenFilterButton value:[NSNumber numberWithBool:YES]];
    
    
    _photoView.clipsToBounds = YES;
    
    UIBarButtonItem *clearButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                                                 target:self
                                                                                 action:@selector(clearTapped)];
    
    self.navigationItem.rightBarButtonItem = clearButton;
}

    
    


//키보드 사라지고 보이게
- (void)keyboardWillAnimate:(NSNotification *)notification
{
    CGRect keyboardBounds;
    [[notification.userInfo valueForKey:UIKeyboardFrameEndUserInfoKey] getValue:&keyboardBounds];
    NSNumber *duration = [notification.userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey];
    NSNumber *curve = [notification.userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey];
    
    keyboardBounds = [self.view convertRect:keyboardBounds toView:nil];
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:[duration doubleValue]];
    [UIView setAnimationCurve:[curve intValue]];
    if([notification name] == UIKeyboardWillShowNotification)
    {
        [self.view setFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y - keyboardBounds.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    }
    else if([notification name] == UIKeyboardWillHideNotification)
    {
        [self.view setFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y + keyboardBounds.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    }
    [UIView commitAnimations];
}




//키보드 리무브 하기
- (void)_removeKeyboardNotification
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}
    
    
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//TG CAMERA




#pragma mark -
#pragma mark - TGCameraDelegate required

- (void)cameraDidCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)cameraDidTakePhoto:(UIImage *)image
{
    _photoView.image = image;
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)cameraDidSelectAlbumPhoto:(UIImage *)image
{
    _photoView.image = image;
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark -
#pragma mark - TGCameraDelegate optional

- (void)cameraWillTakePhoto
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)cameraDidSavePhotoAtPath:(NSURL *)assetURL
{
    NSLog(@"%s album path: %@", __PRETTY_FUNCTION__, assetURL);
}

- (void)cameraDidSavePhotoWithError:(NSError *)error
{
    NSLog(@"%s error: %@", __PRETTY_FUNCTION__, error);
}

#pragma mark -
#pragma mark - Actions

- (IBAction)takePhotoTapped
{
    TGCameraNavigationController *navigationController = [TGCameraNavigationController newWithCameraDelegate:self];
    [self presentViewController:navigationController animated:YES completion:nil];
}

#pragma mark -
#pragma mark - Private methods

- (void)clearTapped
{
    _photoView.image = nil;
}









// 영수의 텍스트바 다른 영역 선택할때 사라지게 하기
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //hides keyboard when another part of layout was touched
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
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
- (IBAction)buttonDone:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (IBAction)buttonFacebook:(id)sender {

    [self.buttonFacebook setBackgroundImage:[UIImage imageNamed:@"facebookOn"]forState:UIControlStateNormal];
   
    
}

- (IBAction)buttonPinterest:(id)sender {
    [self.buttonPinterest setBackgroundImage:[UIImage imageNamed:@"pinterestOn"]forState:UIControlStateNormal];
}



- (IBAction)buttonGoogle:(id)sender {
    [self.buttonGoogle setBackgroundImage:[UIImage imageNamed:@"googleplusOn"]forState:UIControlStateNormal];
}


- (IBAction)buttonSave:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        [[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[MainViewController alloc] init] withCompletion:^{
            
        }];
    }];}

- (IBAction)buttonExit:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        [[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[MainViewController alloc] init] withCompletion:^{
            
        }];
    }];}

//카메라 접근



//텍스트필드 수정하기
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self animateTextField: textField up: YES];
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self animateTextField: textField up: NO];
}

- (void) animateTextField: (UITextField*) textField up: (BOOL) up
{
    const int movementDistance = 80; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    
    int movement = (up ? -movementDistance : movementDistance);
    
    [UIView beginAnimations: @"anim" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}
- (void)textViewDidBeginEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@"텍스트를 입력하세요"]) {
        textView.text = @"";
        textView.textColor = [UIColor blackColor]; //optional
    }
    [textView becomeFirstResponder];
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@""]) {
        textView.text = @"텍스트를 입력하세요";
        textView.textColor = [UIColor lightGrayColor]; //optional
    }
    [textView resignFirstResponder];
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
