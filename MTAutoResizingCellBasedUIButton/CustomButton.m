//
//  CustomButton.m
//  MTAutoResizingCellBasedUIButton
//
//  Created by Manh Tien on 5/8/16.
//  Copyright © 2016 matie. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(CGSize)intrinsicContentSize {
    return CGSizeMake(self.frame.size.width, self.titleLabel.frame.size.height);
}

@end
