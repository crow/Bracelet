//
//  UserBraceletTableViewCell.h
//  Bracelet
//
//  Created by David Crow on 6/1/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BraceletTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *braceletLabel;
@property (strong, nonatomic) IBOutlet UIButton *braceletIconButton;
@property (strong, nonatomic) IBOutlet UIButton *braceletLinkIndicatorButton;

@end
