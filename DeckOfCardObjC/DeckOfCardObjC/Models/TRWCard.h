//
//  TRWCard.h
//  DeckOfCardObjC
//
//  Created by Travis Wheeler on 10/7/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TRWCard : NSObject

@property (nonatomic, copy, readonly) NSString * suit;
@property (nonatomic, copy, readonly) NSString * image;

- (instancetype)initWithCardSuit:(NSString *)suit
                           image:(NSString *)image;

@end

@interface TRWCard (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;

@end

NS_ASSUME_NONNULL_END
