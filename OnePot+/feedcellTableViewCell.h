//
//  feedcellTableViewCell.h
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 19..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface feedcellTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIButton *likeBtn;
@property (nonatomic, weak) IBOutlet UILabel *feedtitleLabel;
@property (nonatomic, weak) IBOutlet UILabel *subtitleLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbImage;
@property (nonatomic, weak) IBOutlet UIImageView *userImage;
@end
