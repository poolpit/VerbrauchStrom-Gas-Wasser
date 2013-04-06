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

@end

@implementation MonatswerteTableViewController

@synthesize heutigesDatumTextField;
// Fuer Core Data
@synthesize managedObjectContext;


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
    
    self.navigationItem.title = @"Monatswerte";
    

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

#pragma mark - Action Buttons

- (IBAction)SaveMonatswerte:(id)sender
{
    
    HUD = [[MBProgressHUD alloc] initWithView:self.navigationController.view];
	[self.navigationController.view addSubview:HUD];
	
	HUD.delegate = self;
	HUD.labelText = @"Saving...";
	//HUD.detailsLabelText = @"updating data";
	HUD.square = YES;
	
	[HUD showWhileExecuting:@selector(savingMonatswerte) onTarget:self withObject:nil animated:YES];
    

    
}

#pragma mark - Task aus Actions

- (void)savingMonatswerte
{
	// Do something usefull in here instead of sleeping ...
	//sleep(1);
    
    for (UITextField *textField in self.MonatswerteCollection)
    {
        textField.delegate = self;
        NSLog(@"--> Der Platzhalter des aktuellen Feldes ist %@", textField.placeholder);
    }
    
    //Die Zeit noch etwas verlängern
    sleep(1);
    
    //Und jetzt weg mit dem Femnster
    [self.navigationController popViewControllerAnimated:YES];



}

#pragma mark - MBProgressHUDDelegate methods

- (void)hudWasHidden:(MBProgressHUD *)hud {
	// Remove HUD from screen when the HUD was hidded
	[HUD removeFromSuperview];
	//[HUD release];
	HUD = nil;
}

@end
