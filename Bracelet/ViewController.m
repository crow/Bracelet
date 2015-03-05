//
//  ViewController.m
//  Bracelet
//
//  Created by David Crow on 12/18/14.
//  Copyright (c) 2014 dcrow.us. All rights reserved.
//
#import <CoreBluetooth/CoreBluetooth.h>

#import "ViewController.h"
#import "LGBluetooth.h"
#import "PeripheralManager.h"
#import "BraceletConstants.h"

#include <stdlib.h>

@interface ViewController ()

@property (nonatomic, strong) LGCharacteristic *characteristic;
@property (nonatomic) int randomNumber;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)connect:(id)sender {
    //TODO change this once you have a bracelet with correct name in firmware
    [[PeripheralManager shared] scan];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
