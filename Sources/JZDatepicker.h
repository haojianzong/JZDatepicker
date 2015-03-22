//
//  Created by Dmitry Ivanenko on 14.04.14.
//  Copyright (c) 2014 Dmitry Ivanenko. All rights reserved.
//

#import <UIKit/UIKit.h>


extern const CGFloat kJZDatepickerHeight;

@interface JZDatepicker : UIControl <UICollectionViewDataSource, UICollectionViewDelegate>

// set tintColor of JZDatepicker for theming

// you almost always want to sort it chronically
@property (strong, nonatomic) NSArray *dates;

// you can read current selected date
@property (strong, nonatomic, readonly) NSDate *selectedDate;

// methods
// ...fill dates to calendar
- (void)fillDatesFromDate:(NSDate *)fromDate numberOfDays:(NSInteger)nextDatesCount;
- (void)fillCurrentWeek;
- (void)fillCurrentMonth;
- (void)fillCurrentYear;

// ...reset
- (void)resetSelectedDate;

// ...select date programatically
- (void)selectDate:(NSDate *)date;
- (void)selectDateAtIndex:(NSUInteger)index;

@end
