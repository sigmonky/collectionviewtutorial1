//
//  RWViewController.m
//  CollectionViewTutorial
//
//  Created by Weinstein, Randy - Nick.com on 5/16/14.
//  Copyright (c) 2014 Viacom. All rights reserved.
//

#import "RWViewController.h"
#import "RWAlbumPhotoCell.h"

static NSString * const PhotoCellIdentifier = @"PhotoCell";

@interface RWViewController ()

@end

@implementation RWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.myCollection.backgroundColor = [UIColor colorWithWhite:0.25f alpha:1.0f];
    
    [self.myCollection registerClass:[RWAlbumPhotoCell class]
            forCellWithReuseIdentifier:PhotoCellIdentifier];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark CollectionView Delegate Methods

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 32;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
    return 8;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    RWAlbumPhotoCell *photoCell =
    [collectionView dequeueReusableCellWithReuseIdentifier:PhotoCellIdentifier
                                              forIndexPath:indexPath];
    
    
    return photoCell;
}

@end
