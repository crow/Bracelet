//
//  BraceletPattern.h
//  Bracelet
//
//  Created by David Crow on 2/1/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BraceletLED.h"

@interface BraceletPattern : NSObject

/**
 * Bracelet LEDs.  This isn't ideal if the device changes number of LEDs, but is very straightforward for the current
 * 5 LED design.
 */
@property (strong, nonatomic) BraceletLED *braceletLED1;

@property (strong, nonatomic) BraceletLED *braceletLED2;

@property (strong, nonatomic) BraceletLED *braceletLED3;

@property (strong, nonatomic) BraceletLED *braceletLED4;

@property (strong, nonatomic) BraceletLED *braceletLED5;


@end
