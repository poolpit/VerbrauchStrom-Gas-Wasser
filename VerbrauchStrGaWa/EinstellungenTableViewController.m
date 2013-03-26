//
//  EinstellungenTableViewController.m
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 26.03.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import "EinstellungenTableViewController.h"
#import "HudView.h"

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

- (void)closeScreen
{
    [self.presentedViewController dismissViewControllerAnimated:YES completion:nil];
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
- (IBAction)AbbruchEinstellungen:(id)sender
{
    HudView *hudView = [HudView hudInView:self.parentViewController.view animated:YES];
    hudView.text = @"Gesichert";
    
    [self performSelector:@selector(closeScreen) withObject:nil afterDelay:0.6];
 
}


@end
