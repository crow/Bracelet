//
//  User.h
//  Bracelet
//
//  Created by David Crow on 1/31/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

+ (instancetype)shared;

@property (strong, nonatomic) NSString *braceletID;

@end
