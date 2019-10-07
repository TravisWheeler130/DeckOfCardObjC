//
//  TRWCard.m
//  DeckOfCardObjC
//
//  Created by Travis Wheeler on 10/7/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

#import "TRWCard.h"

@implementation TRWCard

// Creating a instance type function, we start by defining what we want returned, external parameter name / function name, followed by the type declaration and pointer in memory, this is followed by our internal name for each parameter and then we open the scope
- (instancetype)initWithCardSuit:(NSString *)suit image:(NSString *)image
{
    // almost everything in OBJ-C is a class
    // When creating your own class, it is a subclass of NSObject, so we need to initialize the superclass first.
    self = [super init];
    
    // if self exists (is not nil), then initialize with our properties
    if (self)
    {
        // self.suit = suit
        _suit = suit;
        // self.image = image
        _image = image;
    }
    return self;
}

@end

// Implementation == Extension
// Extension on TRWCard
@implementation TRWCard (JSONConvertable)

// 1: "-" = instance method
// 2: "()" = What we are returning with
// 3: "initWithDictionary:" = External name for our first parameter
// 4: "(NSDictionary<id, id> *" = type declaration
// 5: "NSDictionary<NSString *, id>" = define the types for the key "NSString" and value "id (aka any)" of our dictionary
// 6: "*" = our pointer in memory
// 7: "dictionary" = Internal name for our parameter
- (TRWCard *)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSString * suit = dictionary[@"suit"];
    NSString * image = dictionary[@"image"];
    
    return [self initWithCardSuit:suit image:image];
}

@end
