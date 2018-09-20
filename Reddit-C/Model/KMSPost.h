//
//  KMSPost.h
//  Reddit-C
//
//  Created by Kaden Staker on 9/20/18.
//  Copyright © 2018 Kaden Staker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KMSPost : NSObject

@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, readonly) NSNumber *commentCount;
@property (nonatomic, readonly) NSNumber *ups;

// Like our memberwize init
-(instancetype)initWithTitle:(NSString *)title commentCount:(NSNumber *)commentCount ups:(NSNumber *) ups;

// We need a init for the JSON Dictionary

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
