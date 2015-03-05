//
//  BraceletConstants.h
//  Bracelet
//
//  Created by David Crow on 1/31/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#ifndef Bracelet_BraceletConstants_h
#define Bracelet_BraceletConstants_h

// These are 'hardcoded' rfduino characteristics defined by rfduino people
#define kRfduinoServiceUUID @"2220"
#define kRfduinoSendUUID @"2222"
#define kRfduinoReceiveUUID @"2221"
#define kRfduinoDisconnectUUID @"2223"

#define kTestingBraceletName @"lightVest"
#define kDefaultBraceletName @"Bracelet"
#define kDefaultBreathingSensorName @"MantraBand"

#define kBraceletID @"kBraceletID"

// write interval in seconds
static const double kWriteRate=0.1;

#endif
