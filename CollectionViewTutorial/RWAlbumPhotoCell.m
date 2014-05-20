//
//  RWAlbumPhotoCell.m
//  CollectionViewTutorial
//
//  Created by Weinstein, Randy - Nick.com on 5/16/14.
//  Copyright (c) 2014 Viacom. All rights reserved.
//

#import "RWAlbumPhotoCell.h"

@implementation RWAlbumPhotoCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithWhite:0.85f alpha:1.0f];
        UIFont * customFont = [UIFont fontWithName:@"Arial" size:10]; //custom font
        NSString * text = @"CM7b9#11";
        
        
        UILabel *fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(2, 5, 60, 20)];
        fromLabel.text = text;
        fromLabel.font = customFont;
        fromLabel.numberOfLines = 1;
        fromLabel.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
        fromLabel.adjustsFontSizeToFitWidth = YES;
        //fromLabel.adjustsLetterSpacingToFitWidth = YES;
        fromLabel.minimumScaleFactor = 10.0f/12.0f;
        fromLabel.clipsToBounds = YES;
        fromLabel.backgroundColor = [UIColor clearColor];
        fromLabel.textColor = [UIColor blackColor];
        fromLabel.textAlignment = NSTextAlignmentLeft;
        
        [self addSubview:fromLabel];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
