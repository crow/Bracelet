//
//  BraceletPattern.h
//  Bracelet
//
//  Created by David Crow on 2/1/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BraceletPattern : NSObject

/**
 * Represents the boundary crossing event type.
 */
typedef NS_ENUM(NSInteger, DefaultPatterns) {

    /**
     * Solid color pattern
     */
    patternSolid = 0,

    /**
     * Random pattern
     */
    patternRandom = 1,

    /**
     * Rainbow pattern
     */
    patternRainbow = 2,

    /**
     * Sensor pattern originating from iOS device sensors
     */
    patternSensor = 3,

    /**
     * Sensor pattern originating from BLE peripheral sensors
     */
    patternSensorPeripheral = 4,
};

@end
