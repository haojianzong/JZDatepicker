//
//  Created by Dmitry Ivanenko on 14.04.14.
//  Copyright (c) 2014 Dmitry Ivanenko. All rights reserved.
//

#import <UIKit/UIKit.h>


extern const CGFloat kJZDatepickerHeight;

@interface JZDatepicker : UIControl <UICollectionViewDataSource, UICollectionViewDelegate>

// set tintColor of JZDatepicker for theming


// The model of the datepicker, an array that determines what dates to display.
// you almost always want to sort it chronically
@property (strong, nonatomic) NSArray *dates;

// The currently selected date.
@property (strong, nonatomic, readonly) NSDate *selectedDate;


// methods

// Fill the datepicker with customizable number of dates starting from `fromDate`.
- (void)fillDatesFromDate:(NSDate *)fromDate numberOfDays:(NSInteger)nextDatesCount;

// Fill the datepicker with week year.
- (void)fillCurrentWeek;

// Fill the datepicker with month year.
- (void)fillCurrentMonth;

// This methods will deselect the selected date.
- (void)fillCurrentYear;

// This methods will select a date by a given date.
- (void)selectDate:(NSDate *)date;

// This methods will select a date by a given index.
- (void)selectDateAtIndex:(NSUInteger)index;

// ...reset
- (void)resetSelectedDate;

@end
