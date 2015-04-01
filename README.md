# JZDatepicker

A simple horizontal date picker with sticky header, inspired by the [Peek iOS app](https://itunes.apple.com/us/app/peek-tours-activities/id767696645?mt=8).

* It uses `UICollectionView`

## Demo Screenshot

<img src="https://github.com/haojianzong/JZDatepicker/blob/master/demo.gif" LOOP=INFINITE/>

## Requirements
JZDatepicker uses ARC and requires iOS 7.0+. Works for iPhone and iPad.

## Usage
To use JZDatepicker, just drag files inside Sources folder into your project.

## Properties
The JZDatepicker has the following properties:

    @property (strong, nonatomic) NSArray *dates;
The model of the datepicker, an array that determines what dates to display.

    @property (strong, nonatomic, readonly) NSDate *selectedDate;
The currently selected date. This property is read-only, but can be set using `selectDate:`.

## Methods

The JZDatepicker has the following methods:

    - (void)fillDatesFromDate:(NSDate *)fromDate numberOfDays:(NSInteger)nextDatesCount;
Fill the datepicker with customizable number of dates starting from `fromDate`.

    - (void)fillCurrentWeek;
Fill the datepicker with week year.

    - (void)fillCurrentMonth;
Fill the datepicker with month year.

    - (void)fillCurrentYear;
Fill the datepicker with current year.

    - (void)resetSelectedDate;
This methods will deselect the selected date. 

    - (void)selectDate:(NSDate *)date;
This methods will select a date by a given date.

    - (void)selectDateAtIndex:(NSUInteger)index;
This methods will select a date by a given index.


## Customization

    [self.datepicker setTintColor:[UIcolor yellowColor]];

## License:
Licensed under the MIT license
