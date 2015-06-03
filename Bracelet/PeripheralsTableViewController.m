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
#import "BraceletTableViewCell.h"



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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
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
            return 1;
            break;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {

    switch (section) {
        case SectionUserBracelet:
            return @"My Bracelet";
            break;
        case SectionNearbyBracelets:
            return @"Nearby Bracelets";
            break;
        case SectionNearbySensorPeripherals:
            return @"Nearby Sensor Peripherals";
            break;
        default:
            return @"Mystery Section";
            break;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // do nothing
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    BraceletTableViewCell *cell = nil;

    switch (indexPath.section) {
        case SectionUserBracelet:
        {
            static NSString *CellIdentifier = @"braceletCell";

            cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (cell == nil) {
                cell = [[BraceletTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            }

            // Configure the cell...
            cell.braceletLabel.text = @"My bracelet";//[PeripheralManager shared].userBracelet;
            //cell.braceletLinkIndicatorButton.imageView.image = [UIImage imageNamed:@"843-link"];
            cell.accessoryType = UITableViewCellAccessoryNone;
            return cell;
            break;
        }
        case SectionNearbyBracelets:
        {
            static NSString *CellIdentifier = @"braceletCell";

            cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (cell == nil) {
                cell = [[BraceletTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            }

            // Configure the cell...
            cell.braceletLabel.text = @"A nearby bracelet";//[[PeripheralManager shared].nearbyBracelets objectAtIndex:(NSUInteger)indexPath.row];
            cell.braceletLinkIndicatorButton.imageView.image = [UIImage imageNamed:@"843-link"];
            cell.accessoryType = UITableViewCellAccessoryNone;
            return cell;
            break;
        }
        case SectionNearbySensorPeripherals:
        {
            BraceletTableViewCell *cell = nil;
            static NSString *CellIdentifier = @"braceletCell";

            cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (cell == nil) {
                cell = [[BraceletTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            }

            // Configure the cell...
            cell.braceletLabel.text = @"A nearby sensor peripheral";//[[PeripheralManager shared].nearbySensorPeripherals objectAtIndex:(NSUInteger)indexPath.row];
            cell.braceletLinkIndicatorButton.imageView.image = [UIImage imageNamed:@"843-link"];
            cell.accessoryType = UITableViewCellAccessoryNone;
            return cell;
            break;
        }
        default:
            break;
    }

    return cell;
}


@end
