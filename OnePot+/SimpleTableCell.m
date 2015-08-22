//
//  SimpleTableCell.m
//  OnePot+
//
//  Created by Youngsoo Jeong on 2015. 8. 19..
//  Copyright (c) 2015년 Youngsoo Jeong. All rights reserved.
//

#import "SimpleTableCell.h"

@implementation SimpleTableCell
@synthesize nameLabel = _nameLabel;
@synthesize prepTimeLabel = _prepTimeLabel;
@synthesize thumbnailImageView = _thumbnailImageView;
@synthesize aboutLabel = _aboutLabel;

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


@end
