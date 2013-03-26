//
//  JSMDatePicker.h
//  TextFieldAndDatePicker
//
//  Created by Frank Jüstel on 01.01.13.
//  Copyright (c) 2013 JSM Arts Webservices GbR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSMDatePicker : UIDatePicker
- (id) initWithDateFormatString: (NSString*) dateFormatString forTextField: (UITextField*) textField withDatePickerMode: (UIDatePickerMode) datePickerMode;
@end
