//
//  JZDatepickerMonthView.m
//  JZDatepicker
//
//  Created by haojianzong on 11/12/14.
//  Copyright (c) 2014 Dmitry Ivanenko. All rights reserved.
//

#import "JZDatepickerMonthView.h"
#import <QuartzCore/QuartzCore.h>

@interface JZDatepickerMonthView()

@property (strong, nonatomic) UILabel *monthLabel;
@property (nonatomic, strong) NSDateFormatter *dateFormatter;

@end

@implementation JZDatepickerMonthView

- (NSDateFormatter *)dateFormatter
{
    if(!_dateFormatter){
        _dateFormatter = [[NSDateFormatter alloc] init];
    }
    
    return _dateFormatter;
}

- (void)tintColorDidChange
{
    [super tintColorDidChange];
    [self setBackgroundColor:self.tintColor];
}

- (void)setDate:(NSDate *)date
{
    _date = date;
    [self updateMonthLabel];
}

- (void)updateMonthLabel
{
    [self.dateFormatter setDateFormat:@"MMM"];
    NSString *month = [self.dateFormatter stringFromDate:self.date];
    self.monthLabel.text = [month uppercaseString];
}

- (UILabel *)monthLabel
{
    if (!_monthLabel) {
        _monthLabel = [[UILabel alloc] init];
        _monthLabel.lineBreakMode = NSLineBreakByCharWrapping;
        _monthLabel.transform = CGAffineTransformMakeRotation((M_PI)/2);
        _monthLabel.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:16];
    }
    return _monthLabel;
}

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];

    }
    return self;
}

- (void)setup
{
    // add label
    [self addSubview:self.monthLabel];
    self.monthLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.monthLabel
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1.0
                                                      constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.monthLabel
                                                     attribute:NSLayoutAttributeCenterY
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1.0
                                                      constant:0.0]];
    // add border
//    self.layer.borderColor = [UIColor grayColor].CGColor;
//    self.layer.borderWidth = 1.0f;
}

@end
