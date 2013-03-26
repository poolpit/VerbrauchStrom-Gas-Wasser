//
//  MonatswerteTableViewController.h
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 25.03.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSMDatePicker.h"

@interface MonatswerteTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITextField *heutigesDatumTextField;

- (IBAction)SaveMonatswerte:(id)sender;
- (IBAction)CancelMonatswerte:(id)sender;

@end
