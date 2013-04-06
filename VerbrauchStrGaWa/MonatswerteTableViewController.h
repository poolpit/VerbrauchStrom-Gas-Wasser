//
//  MonatswerteTableViewController.h
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 25.03.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSMDatePicker.h"
#import "MBProgressHUD.h"

@interface MonatswerteTableViewController : UITableViewController <MBProgressHUDDelegate>
{
	MBProgressHUD *HUD;
    
	long long expectedLength;
	long long currentLength;
}

@property (weak, nonatomic) IBOutlet UITextField *heutigesDatumTextField;
@property (weak, nonatomic) IBOutlet UITextField *abgelesenStromTextField;
@property (weak, nonatomic) IBOutlet UITextField *abgelesenGasTextField;
@property (weak, nonatomic) IBOutlet UITextField *abgelesenWasserTextField;

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;


- (IBAction)SaveMonatswerte:(id)sender;

@end
