//
//  BraceletManager.h
//  Bracelet
//
//  Created by David Crow on 1/31/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>

@interface PeripheralManager : NSObject

+ (instancetype)shared;

- (void)connect:(NSString *) peripheralName;

@end
