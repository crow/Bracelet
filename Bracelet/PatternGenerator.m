//
//  PatternGenerator.m
//  Bracelet
//
//  Created by David Crow on 2/21/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#import "PatternGenerator.h"
#import "BraceletPattern.h"

#define DEFINE_SHARED_INSTANCE_USING_BLOCK(block) \
static dispatch_once_t pred = 0; \
__strong static id _sharedObject = nil; \
dispatch_once(&pred, ^{ \
_sharedObject = block(); \
}); \
return _sharedObject; \


@implementation PatternGenerator

+ (instancetype)shared {
    DEFINE_SHARED_INSTANCE_USING_BLOCK(^{
        return [[self alloc] init];
    });
}

- (BraceletPattern *) generatePatternForSensorType: (BSensorType) sensorType {

    BraceletPattern *braceletPattern = [[BraceletPattern alloc] init];

    switch (sensorType) {
        case BSensorTypeBeacon:
            break;
        case BSensorTypeMantra:
            break;
        default:
            break;
    }

    return braceletPattern;
}

@end
