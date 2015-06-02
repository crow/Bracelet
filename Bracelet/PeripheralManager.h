//
//  BraceletManager.h
//  Bracelet
//
//  Created by David Crow on 1/31/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import "Bracelet.h"

@interface PeripheralManager : NSObject

+ (instancetype)shared;

- (void)scan;

// The current user's bracelet
@property (nonatomic, strong) Bracelet *userBracelet;

// The sensor devices
@property (nonatomic, strong) NSMutableArray *nearbySensorPeripherals;

// Array of all Bracelets nearby before connecting
@property (nonatomic, strong) NSMutableArray *nearbyBracelets;

@end
