//
//  KMSPost.m
//  Reddit-C
//
//  Created by Kaden Staker on 9/20/18.
//  Copyright © 2018 Kaden Staker. All rights reserved.
//

#import "KMSPost.h"

@implementation KMSPost

// This is for creating instance of POST
- (instancetype)initWithTitle:(NSString *)title commentCount:(NSNumber *)commentCount ups:(NSNumber *)ups
{
    self = [super init];
    if (self) {
        _title = [title copy];
        _commentCount = commentCount;
        _ups = ups;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    // Every post lives inside a data node
    NSDictionary *dataDictionary = dictionary[@"data"];
    
    NSString *title = dataDictionary[[DVMPost titleKey]];
    NSNumber *commentCount = dataDictionary[[DVMPost commentCountKey]];
    NSNumber *ups = dataDictionary[[DVMPost upsKey]];
    
    return [self initWithTitle:title commentCount:commentCount ups:ups];
    
}

/// These are like our private keys

+(NSString *)titleKey
{
    return @"title";
}

+(NSString *)commentCountKey
{
    return @"num_comments";
}

+(NSString *)upsKey
{
    return @"ups";
}

@end
