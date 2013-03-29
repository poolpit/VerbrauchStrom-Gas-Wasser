//
//  ListeGrundpreisTableViewController.m
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 29.03.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import "ListeGrundpreisTableViewController.h"

@interface ListeGrundpreisTableViewController ()

@end

@implementation ListeGrundpreisTableViewController

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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ListeGrundpreisCell";
    ListeGrundpreisTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.GrundpreisTypLabel.text = @"Gas";
    cell.ZaehlerNrTextField.text = @"333333";
    cell.GrundpreisTextField.text = @"0.34";
    //cell.AnzeigeStatusSwitch.on = TRUE;
    
    
    return cell;
}


@end
