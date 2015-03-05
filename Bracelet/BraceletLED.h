//
//  BraceletLED.h
//  Bracelet
//
//  Created by David Crow on 2/23/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BraceletLED : NSObject

// Bracelet LED have RBGA value, alpha is brightness
@property (strong, nonatomic) UIColor *color;

//Each bracelet LED has an on/off state that can change at the send rate
@property (nonatomic, getter=isOn) BOOL *on;

@end
