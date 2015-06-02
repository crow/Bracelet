//
//  Bracelet.h
//  Bracelet
//
//  Created by David Crow on 1/31/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BraceletPattern.h"
#import "LGBluetooth.h"

@interface Bracelet : NSObject

@property  (nonatomic) BOOL *connected;

@property  (nonatomic, strong) NSString *name;

@property  (nonatomic, strong) BraceletPattern *currentPattern;

@property (nonatomic, strong) LGPeripheral *peripheral;

@property (nonatomic, strong) LGCharacteristic *writeCharacteristic;

@property (nonatomic, strong) LGCharacteristic *readCharacteristic;

+ (instancetype)braceletWithPeripheral:(LGPeripheral *)peripheral
                   writeCharacteristic:(NSString *)writeCharacteristic
                    readCharacteristic:(NSString *)readCharacteristic;

@end
