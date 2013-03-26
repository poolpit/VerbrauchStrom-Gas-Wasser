//
//  JSMDatePicker.m
//  TextFieldAndDatePicker
//
//  Created by Frank Jüstel on 01.01.13.
//  Copyright (c) 2013 JSM Arts Webservices GbR. All rights reserved.
//

#import "JSMDatePicker.h"

@interface JSMDatePicker ()
@property (nonatomic, strong) NSDateFormatter* dateFormatter;
@property (nonatomic, strong) UITextField* textField;
@end

@implementation JSMDatePicker

-(id)initWithDateFormatString:(NSString *)dateFormatString forTextField:(UITextField *)textField withDatePickerMode:(UIDatePickerMode)datePickerMode
{
    self = [super init];
    if (!self) return nil;
    
    self.datePickerMode = datePickerMode;
    self.textField = textField;
    
    self.dateFormatter = [[NSDateFormatter alloc] init];
    self.dateFormatter.dateFormat = dateFormatString;
    
    [self addTarget:self action:@selector(dateSelected:) forControlEvents:UIControlEventValueChanged];
    
    return self;
}

-(void)setDate:(NSDate *)date
{
    [super setDate:date];
    [self dateSelected:nil];
}

#pragma mark - @selectors
- (void) dateSelected: (id) sender
{
    self.textField.text = [self.dateFormatter stringFromDate:self.date];
}
@end
