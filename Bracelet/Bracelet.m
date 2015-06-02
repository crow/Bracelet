//
//  Bracelet.m
//  Bracelet
//
//  Created by David Crow on 1/31/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#import "Bracelet.h"
#import "BraceletConstants.h"

@implementation Bracelet

//constructor for making a fully formed bracelet
-(id)init {
    if (self = [super init] ) {

    }

    return self;
}

+ (instancetype)braceletWithPeripheral:(LGPeripheral *)peripheral
                   writeCharacteristic:(LGCharacteristic *)writeCharacteristic
                    readCharacteristic:(LGCharacteristic *)readCharacteristic {
    Bracelet *bracelet = [[self alloc] init];

    bracelet.peripheral = peripheral;
    bracelet.readCharacteristic = readCharacteristic;
    bracelet.writeCharacteristic = writeCharacteristic;

    return bracelet;
}

@end
