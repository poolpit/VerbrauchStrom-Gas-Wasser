//
//  MonatswerteTableViewController.m
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 25.03.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import "MonatswerteTableViewController.h"
#import "Ablesewerte.h"
//#import "AppDelegate.h"



@interface MonatswerteTableViewController () <UITextFieldDelegate>


// Für den DatePicker
@property (nonatomic, strong) JSMDatePicker* datePicker;

@end

@implementation MonatswerteTableViewController

@synthesize heutigesDatumTextField;
@synthesize abgelesenStromTextField;
@synthesize abgelesenGasTextField;
@synthesize abgelesenWasserTextField;

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
    
    //self.navigationItem.title = @"Monatswerte bla";
    

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
    
    // Für CoreData den managedObjectContext holen
    MonatswerteTableViewController *delegate = (MonatswerteTableViewController *)[[UIApplication sharedApplication] delegate];
    
    if (self.managedObjectContext != delegate.managedObjectContext) {
        
        self.managedObjectContext = delegate.managedObjectContext;
        
    }

    
    Ablesewerte *ablesewerte = [NSEntityDescription insertNewObjectForEntityForName:@"Ablesewerte" inManagedObjectContext:self.managedObjectContext];
    
    ablesewerte.ableseDatum = self.heutigesDatumTextField.text;
    ablesewerte.ableseWertStrom = [NSNumber numberWithFloat:[self.abgelesenStromTextField.text floatValue]];
    ablesewerte.ableseWertGas = [NSNumber numberWithFloat:[self.abgelesenGasTextField.text floatValue]];
    ablesewerte.ableseWertWasser = [NSNumber numberWithFloat:[self.abgelesenWasserTextField.text floatValue]];
  
    //Jetzt die Daten speichern
    NSError *error;
    if (![self.managedObjectContext save:&error])
    {
        NSLog(@"Fehler beim speichern der Daten %@", error);
        abort();
    }
    //Die Zeit noch etwas verlängern
    //sleep(2);

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

- (void)viewDidUnload {
    [self setAbgelesenStromTextField:nil];
    [self setAbgelesenGasTextField:nil];
    [self setAbgelesenWasserTextField:nil];
    [super viewDidUnload];
}
@end
