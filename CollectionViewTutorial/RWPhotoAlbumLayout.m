//
//  RWPhotoAlbumLayout.m
//  CollectionViewTutorial
//
//  Created by Weinstein, Randy - Nick.com on 5/16/14.
//  Copyright (c) 2014 Viacom. All rights reserved.
//

#import "RWPhotoAlbumLayout.h"

static NSString * const RWPhotoAlbumLayoutPhotoCellKind = @"PhotoCell";

@interface RWPhotoAlbumLayout()
    @property (nonatomic,strong) NSDictionary *layoutInfo;
@end

@implementation RWPhotoAlbumLayout
#pragma mark lifecycle

-(id) init {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (id) initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void) setup {
    self.itemInsets = UIEdgeInsetsMake(22.0f, 22.0f, 13.0f, 22.0f);
    self.itemSize = CGSizeMake(125.0f,125.0f);
    self.interItemSpacingY = 12.0f;
    self.numberOfColumns = 2;
}

#pragma mark base class overrides

- (void) prepareLayout {
    NSMutableDictionary *newLayoutInfo = [NSMutableDictionary dictionary];
    NSMutableDictionary *cellLayoutInfo = [NSMutableDictionary dictionary];
    
    NSInteger sectionCount = [self.collectionView numberOfSections];
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:0
                                                 inSection:0];
    
    for (NSInteger section = 0; section < sectionCount; section++) {
        NSInteger itemCount = [self.collectionView numberOfItemsInSection:0];
        
        for (NSInteger item = 0; item < itemCount; item++) {
            indexPath = [NSIndexPath indexPathForItem:item inSection:section];
            
            UICollectionViewLayoutAttributes *itemAttributes =
            [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
            
            itemAttributes.frame = [self frameForAlbumPhotoAtIndexPath];[indexPath];
            
            cellLayoutInfo[indexPath] = itemAttributes;
        }
    }
    
    newLayoutInfo[RWPhotoAlbumLayoutPhotoCellKind] = cellLayoutInfo;
    
    self.layoutInfo = newLayoutInfo;
}

#pragma mark private
- (CGRect)frameForAlbumPhotoAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger row = indexPath.section/self.numberOfColumns;
    NSInteger column = indexPath.section % self.numberOfColumns;
    
}


@end
