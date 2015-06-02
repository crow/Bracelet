//
//  BraceletManager.m
//  Bracelet
//
//  Created by David Crow on 1/31/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//
#import "PeripheralManager.h"
#import "BraceletConstants.h"
#import "LGBluetooth.h"
#import "Bracelet.h"
#import "User.h"

#define DEFINE_SHARED_INSTANCE_USING_BLOCK(block) \
static dispatch_once_t pred = 0; \
__strong static id _sharedObject = nil; \
dispatch_once(&pred, ^{ \
_sharedObject = block(); \
}); \
return _sharedObject; \

@interface PeripheralManager ()

@property (nonatomic, strong) LGCharacteristic *writeCharacteristic;
@property (nonatomic, strong) LGCharacteristic *readCharacteristic;

@property (nonatomic) int randomNumber;

@end

@implementation PeripheralManager

+ (instancetype)shared {
    DEFINE_SHARED_INSTANCE_USING_BLOCK(^{
        return [[self alloc] init];
    });
}

- (void)scan {

    [[LGCentralManager sharedInstance] scanForPeripheralsByInterval:2
                                                         completion:^(NSArray *peripherals)
     {

         // Populated nearby peripheral arrays
         if (peripherals.count) {
             for (LGPeripheral *peripheral in LGCentralManager.sharedInstance.peripherals) {
                 // Sort peripherals into correct buckets
                 [self sortPeripheral:peripheral];
                 // Connect to peripherals
                 [self testPeripheral:peripheral];
             }

         }
     }];
}

// Adds peripheral to it's correct connected array
-(void) sortPeripheral:(LGPeripheral *) peripheral {
    if ([peripheral.name isEqualToString:kDefaultBraceletName] && [peripheral.UUIDString isEqualToString:[[User shared] braceletID]] ) {
        // If it's the user's bracelet add as userBracelet
        self.userBracelet = [Bracelet braceletWithPeripheral:peripheral writeCharacteristic:self.writeCharacteristic readCharacteristic:self.readCharacteristic];
    }
}

- (void)testPeripheral:(LGPeripheral *)peripheral
{
    [peripheral connectWithCompletion:^(NSError *error) {
        [peripheral discoverServicesWithCompletion:^(NSArray *services, NSError *error) {
            for (LGService *service in services) {
                if ([service.UUIDString isEqualToString:kRfduinoServiceUUID]) {
                    [service discoverCharacteristicsWithCompletion:^(NSArray *characteristics, NSError *error) {
                        __block int i = 0;
                        for (LGCharacteristic *characteristic in characteristics) {
                            if ([characteristic.UUIDString isEqualToString:kRfduinoSendUUID]) {

                                self.writeCharacteristic = characteristic;
                                [self startPatternStream];

                            } else {
                                [characteristic readValueWithBlock:^(NSData *data, NSError *error) {
                                    if (++i == 3) {
                                        [peripheral disconnectWithCompletion:nil];
                                    }
                                }];
                            }
                        }
                    }];
                }
            }
        }];
    }];
}


// Starts the pattern stream at interval kWriteRate
- (void) startPatternStream {

    if (![NSThread isMainThread]) {

        dispatch_async(dispatch_get_main_queue(), ^{
            [NSTimer scheduledTimerWithTimeInterval:kWriteRate
                                             target:self
                                           selector:@selector(patternStream)
                                           userInfo:nil
                                            repeats:YES];
        });
    }
    else{
        [NSTimer scheduledTimerWithTimeInterval:kWriteRate
                                         target:self
                                       selector:@selector(patternStream)
                                       userInfo:nil
                                        repeats:YES];
    }
}

- (void) patternStream {
    
    int randomNumber1 = 0 + rand() % (255-0);
    int randomNumber2 = 0 + rand() % (255-0);
    int randomNumber3 = 0 + rand() % (255-0);
    
    uint8_t tx[3] = {randomNumber1, randomNumber2, randomNumber3};
    NSData *data = [NSData dataWithBytes:(void*)&tx length:3];
    
    [self.writeCharacteristic writeValue:data completion:^(NSError *error) {
        
    }];
}

- (void) loadPattern {

}

@end
