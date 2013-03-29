//
//  ListeGrundpreisTableViewCell.h
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 29.03.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface ListeGrundpreisTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *GrundpreisTypLabel;
@property (weak, nonatomic) IBOutlet UITextField *GrundpreisTextField;
@property (weak, nonatomic) IBOutlet UITextField *ZaehlerNrTextField;
@property (weak, nonatomic) IBOutlet UIImageView *ZaehlerBildImageView;

@end
