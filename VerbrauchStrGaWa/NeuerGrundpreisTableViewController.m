//
//  NeuerGrundpreisTableViewController.m
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 29.03.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import "NeuerGrundpreisTableViewController.h"

@interface NeuerGrundpreisTableViewController ()

@end

@implementation NeuerGrundpreisTableViewController

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

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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

- (IBAction)SaveGrundpreis:(id)sender
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
