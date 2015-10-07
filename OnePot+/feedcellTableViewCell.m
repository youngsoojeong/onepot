//
//  feedcellTableViewCell.m
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 19..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import "feedcellTableViewCell.h"

@implementation feedcellTableViewCell
@synthesize userImage = _userImage;
@synthesize thumbImage = _thumbImage;
@synthesize subtitleLabel = _subtitleLabel;
@synthesize feedtitleLabel = _feedtitleLabel;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

  // Configure the view for the selected state
- (IBAction)likeBtn:(id)sender {
    [self.likeBtn setBackgroundImage:[UIImage imageNamed:@"likefillbtn"]forState:UIControlStateNormal];

}
-(IBAction)buttonDownload:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Down Recipe"
                                                   message:@"100point for download this recipe."
                                                  delegate:self
                                         cancelButtonTitle:@"NO"    /* nil 로 지정할 경우 cancel button 없음 */
                                         otherButtonTitles:@"YES", nil];
    
    // alert창을 띄우는 method는 show이다.
    [alert show];
    
    
    
    
    /*[[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:[[LoginViewController alloc] init] withCompletion:^{
     
     }];*/
}
@end

