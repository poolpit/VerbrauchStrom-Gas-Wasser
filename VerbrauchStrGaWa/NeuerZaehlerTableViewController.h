//
//  NeuerZaehlerTableViewController.h
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 29.03.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"


@interface NeuerZaehlerTableViewController : UITableViewController<MBProgressHUDDelegate>
{
	MBProgressHUD *HUD;
    
	long long expectedLength;
	long long currentLength;
}

- (IBAction)SaveZaehler:(id)sender;

@end
