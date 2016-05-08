//
//  TestCell.m
//  MTAutoResizingCellBasedUIButton
//
//  Created by Manh Tien on 5/7/16.
//  Copyright © 2016 matie. All rights reserved.
//

#import "TestCell.h"

@implementation TestCell

- (void)awakeFromNib {
    self.btnTest.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.btnTest.titleLabel.numberOfLines = 0;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self.contentView setNeedsLayout];
    self.btnTest.titleLabel.preferredMaxLayoutWidth = CGRectGetWidth(self.btnTest.titleLabel.frame);
}

@end
