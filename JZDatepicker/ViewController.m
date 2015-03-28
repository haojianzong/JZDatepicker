//
//  ViewController.m
//  JZDatepicker
//
//  Created by HAOJIANZONG on 22/3/15.
//  Copyright (c) 2015 HAOJIANZONG. All rights reserved.
//

#import "ViewController.h"
#import "JZDatepicker.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet JZDatepicker *datepicker;
@property (weak, nonatomic) IBOutlet UILabel *selectedDateLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.datepicker addTarget:self action:@selector(updateSelectedDate) forControlEvents:UIControlEventValueChanged];
    
    [self.datepicker fillDatesFromDate:[NSDate date] numberOfDays:1000];
    
    //    [self.datepicker fillCurrentWeek];
    //    [self.datepicker fillCurrentMonth];
    //    [self.datepicker fillCurrentYear];
    
    [self.datepicker selectDateAtIndex:0];
    
    [self.datepicker setTintColor:[UIColor colorWithRed:0.988f green:0.953f blue:0.106f alpha:1.00f]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateSelectedDate
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = [NSDateFormatter dateFormatFromTemplate:@"EEEEddMMMM" options:0 locale:nil];
    
    self.selectedDateLabel.text = [formatter stringFromDate:self.datepicker.selectedDate];
}

- (IBAction)resetSelectedBtnTapped:(id)sender {
    [self.datepicker resetSelectedDate];
}

@end
