//
//  Created by Dmitry Ivanenko on 14.04.14.
//  Copyright (c) 2014 Dmitry Ivanenko. All rights reserved.
//

#import <UIKit/UIKit.h>


extern const CGFloat kDIDatepickerHeight;

@interface DIDatepicker : UIControl <UICollectionViewDataSource, UICollectionViewDelegate>

// data
@property (strong, nonatomic) NSArray *dates; // you almost always want to sort it chronically
@property (strong, nonatomic, readonly) NSDate *selectedDate;

// UI
// use tintColor of this view to determine highlight color

// methods
- (void)fillDatesFromDate:(NSDate *)fromDate numberOfDays:(NSInteger)nextDatesCount;
- (void)fillCurrentWeek;
- (void)fillCurrentMonth;
- (void)fillCurrentYear;
- (void)resetSelectedDate;
- (void)selectDate:(NSDate *)date;
- (void)selectDateAtIndex:(NSUInteger)index;

@end
