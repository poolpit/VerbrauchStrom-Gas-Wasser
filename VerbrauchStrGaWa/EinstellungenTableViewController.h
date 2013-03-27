//
//  EinstellungenTableViewController.h
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 26.03.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface EinstellungenTableViewController : UITableViewController <MBProgressHUDDelegate> {
	MBProgressHUD *HUD;
    
	long long expectedLength;
	long long currentLength;
}

@end
