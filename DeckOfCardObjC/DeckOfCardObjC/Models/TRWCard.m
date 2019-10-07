//
//  TRWCard.m
//  DeckOfCardObjC
//
//  Created by Travis Wheeler on 10/7/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

#import "TRWCard.h"

@implementation TRWCard

- (instancetype)initWithCardSuit:(NSString *)suit image:(NSString *)image
{
    self = [super init];
    if (self)
    {
        _suit = suit;
        _image = image;
    }
    return self;
}

@end

@implementation TRWCard (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSString * suit = dictionary[@"suit"];
    NSString * image = dictionary[@"image"];
    
    return [self initWithCardSuit:suit image:image];
}

@end
