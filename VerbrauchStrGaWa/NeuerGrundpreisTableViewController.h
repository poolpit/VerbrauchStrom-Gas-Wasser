//
//  NeuerGrundpreisTableViewController.h
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 29.03.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"


@interface NeuerGrundpreisTableViewController : UITableViewController<MBProgressHUDDelegate>
{
	MBProgressHUD *HUD;
    
	long long expectedLength;
	long long currentLength;
}
- (IBAction)SaveGrundpreis:(id)sender;

@property (strong, nonatomic) IBOutlet UISegmentedControl *GrundpreisSegmentedControl;

@property (strong, nonatomic) IBOutlet UIImageView *GrundpreisZaehlerImageView;
@property (weak, nonatomic) IBOutlet UITextField *GrundpreisWertTextField;
@property (weak, nonatomic) IBOutlet UITextField *GrundpreisZaehlernrTextField;
@property (weak, nonatomic) IBOutlet UITextView *GrundpreisBemerkungTextView;

@end
