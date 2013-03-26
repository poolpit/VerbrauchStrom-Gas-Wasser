//
//  MonatswerteTableViewController.m
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 25.03.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import "MonatswerteTableViewController.h"

@interface MonatswerteTableViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *MonatswerteCollection;
// Für den DatePicker
@property (nonatomic, strong) JSMDatePicker* datePicker;
@property (weak, nonatomic) IBOutlet UITextField *heutigesDatumTextField;

@end

@implementation MonatswerteTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // DatePicker initialisieren und aktuelles Datum ins Feld setzen
    self.datePicker = [[JSMDatePicker alloc] initWithDateFormatString:@"dd-MM-yyyy" forTextField:self.heutigesDatumTextField withDatePickerMode:UIDatePickerModeDate];
    
    self.heutigesDatumTextField.inputView = self.datePicker;
    
    self.datePicker.date = [NSDate date];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UItextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}

- (IBAction)SaveMonatswerte:(id)sender
{
    for (UITextField *textField in self.MonatswerteCollection)
    {
        textField.delegate = self;
        NSLog(@"--> Der Platzhalter des aktuellen Feldes ist %@", textField.placeholder);
    }
}
@end
