//
//  EinstellungenTableViewController.m
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 26.03.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import "EinstellungenTableViewController.h"
#import "MBProgressHUD.h"

@interface EinstellungenTableViewController () <UITextFieldDelegate>

@end

@implementation EinstellungenTableViewController

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

#pragma mark - IBActions

- (IBAction)AbbruchEinstellungen:(id)sender
{

	HUD = [[MBProgressHUD alloc] initWithView:self.navigationController.view];
	[self.navigationController.view addSubview:HUD];
	
	HUD.delegate = self;
	HUD.labelText = @"Saving...";
	//HUD.detailsLabelText = @"updating data";
	HUD.square = YES;
	
	[HUD showWhileExecuting:@selector(myTask) onTarget:self withObject:nil animated:YES];
    
 }
    
#pragma mark - Task aus Actions

- (void)myTask
{
	// Do something usefull in here instead of sleeping ...
	sleep(1);
}

#pragma mark - MBProgressHUDDelegate methods

- (void)hudWasHidden:(MBProgressHUD *)hud {
	// Remove HUD from screen when the HUD was hidded
	[HUD removeFromSuperview];
	//[HUD release];
	HUD = nil;
}

@end
