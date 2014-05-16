//
//  RWPhotoAlbumLayout.h
//  CollectionViewTutorial
//
//  Created by Weinstein, Randy - Nick.com on 5/16/14.
//  Copyright (c) 2014 Viacom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RWPhotoAlbumLayout : UICollectionViewLayout
    @property (nonatomic) UIEdgeInsets itemInsets;
    @property (nonatomic) CGSize itemSize;
    @property (nonatomic) CGFloat interItemSpacingY;
    @property (nonatomic) NSInteger numberOfColumns;
@end
