//
//  Created by Dmitry Ivanenko on 15.04.14.
//  Copyright (c) 2014 Dmitry Ivanenko. All rights reserved.
//

#import <UIKit/UIKit.h>


extern const CGFloat kJZDatepickerItemWidth;

// use cell's tint color to for theming

@interface JZDatepickerCell : UICollectionViewCell

@property (strong, nonatomic) NSDate *date;

@end
