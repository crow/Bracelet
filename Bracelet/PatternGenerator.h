//
//  PatternGenerator.h
//  Bracelet
//
//  Created by David Crow on 2/21/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 * Represents where the color data is coming from
 */
typedef NS_ENUM(NSInteger, BSensorType) {

    BSensorTypeMantra,

    BSensorTypeBeacon,
};

@interface PatternGenerator : NSObject

+ (instancetype)shared;

@end
