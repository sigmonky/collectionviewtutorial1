//
//  RWViewController.h
//  CollectionViewTutorial
//
//  Created by Weinstein, Randy - Nick.com on 5/16/14.
//  Copyright (c) 2014 Viacom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RWPhotoAlbumLayout.h"

@interface RWViewController : UIViewController <UICollectionViewDataSource,
UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *myCollection;
@property (weak, nonatomic) IBOutlet RWPhotoAlbumLayout *photoAlbumLayout;

@end
