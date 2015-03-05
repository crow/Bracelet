//
//  User.m
//  Bracelet
//
//  Created by David Crow on 1/31/15.
//  Copyright (c) 2015 dcrow.us. All rights reserved.
//

#import "User.h"
#import "BraceletConstants.h"

#define DEFINE_SHARED_INSTANCE_USING_BLOCK(block) \
static dispatch_once_t pred = 0; \
__strong static id _sharedObject = nil; \
dispatch_once(&pred, ^{ \
_sharedObject = block(); \
}); \
return _sharedObject; \

@implementation User

+ (instancetype)shared {
    DEFINE_SHARED_INSTANCE_USING_BLOCK(^{
        return [[self alloc] init];
    });
}

-(id)init {
    if (self = [super init] ) {
    }
    return self;
}

-(void) loadSavedUser {
    if ([[NSUserDefaults standardUserDefaults] valueForKey:kBraceletID]){
        self.braceletID = [[NSUserDefaults standardUserDefaults] valueForKey:kBraceletID];\
    }
}

@end
