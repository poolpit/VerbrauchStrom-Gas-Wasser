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

- (IBAction)SaveMonatswerte:(id)sender
{
    for (UITextField *textField in self.MonatswerteCollection)
    {
        textField.delegate = self;
        NSLog(@"--> Der Platzhalter des aktuellen feldes ist %@", textField.placeholder);
    }
}
@end
