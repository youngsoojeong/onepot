//
//  SimpleTableCell.h
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 19..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;
@property (nonatomic, weak) IBOutlet UILabel *aboutLabel;
@end
