//
//  ReszingCell.m
//  Test_IOS
//
//  Created by Manh Tien on 5/9/16.
//  Copyright © 2016 matie. All rights reserved.
//

#import "ReszingCell.h"

@implementation ReszingCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self.contentView setNeedsLayout];
    [self.lblContent setPreferredMaxLayoutWidth:CGRectGetWidth(self.lblContent.frame)];
}
@end
