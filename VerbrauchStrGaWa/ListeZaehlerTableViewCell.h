//
//  ListeZaehlerTableViewCell.h
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 27.03.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface ListeZaehlerTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *ZaehlerTypLabel;
@property (weak, nonatomic) IBOutlet UITextField *ZaehlerNummerTextField;
@property (weak, nonatomic) IBOutlet UISwitch *AnzeigeStatusSwitch;

@end
