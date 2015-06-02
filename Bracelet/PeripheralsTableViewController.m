//
//  PeripheralsTableViewController.m
//  Bracelet
//
//  Created by David Crow on 3/13/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#import "PeripheralsTableViewController.h"
#import "PeripheralManager.h"
#import "SensorManager.h"

enum {
    SectionUserBracelet = 0,
    SectionNearbyBracelets = 1,
    SectionNearbySensorPeripherals = 2
};

@implementation PeripheralsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //User bracelet, nearby bracelets, nearby sensor peripherals
    return 3;

}

- (NSInteger)numberOfRowsInSection:(NSInteger)section {

    switch (section) {
        case SectionUserBracelet:
            return 1;
            break;
        case SectionNearbyBracelets:
            // for testing
            return 1; //[[PeripheralManager shared] nearbyBracelets].count;
            break;
        case SectionNearbySensorPeripherals:
            // for testing
            return 1; //[[PeripheralManager shared] nearbySensorPeripherals].count;
            break;
        default:
            return 0;
            break;
    }
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = nil;

    switch (indexPath.section) {
        case SectionUserBracelet:
        {
//            cell = self.textCell;
            break;
        }
        case SectionNearbyBracelets:
        {
//            static NSString *CellIdentifier = @"TagCell";
//
//            cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//            if (cell == nil) {
//                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//            }
//
//            // Configure the cell...
//
//            cell.textLabel.text = [[UAirship push].tags objectAtIndex:(NSUInteger)indexPath.row];
//            cell.accessoryType = UITableViewCellAccessoryNone;
            break;
        }
        case SectionNearbySensorPeripherals:
        {

        }
        default:
            break;
    }

    return cell;
}


@end
