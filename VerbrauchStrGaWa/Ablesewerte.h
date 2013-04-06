//
//  Ablesewerte.h
//  VerbrauchStrGaWa
//
//  Created by Peter Wiest on 02.04.13.
//  Copyright (c) 2013 pewi-web. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Ablesewerte : NSManagedObject

@property (nonatomic, retain) NSString * ableseDatum;
@property (nonatomic, retain) NSNumber * ableseWertStrom;
@property (nonatomic, retain) NSNumber * ableseWertGas;
@property (nonatomic, retain) NSNumber * ableseWertWasser;

@end
