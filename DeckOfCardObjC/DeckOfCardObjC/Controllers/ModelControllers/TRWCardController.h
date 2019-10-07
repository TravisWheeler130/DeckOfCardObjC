//
//  TRWCardController.h
//  DeckOfCardObjC
//
//  Created by Travis Wheeler on 10/7/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TRWCard.h"

@interface TRWCardController : NSObject

+ (TRWCardController *)sharedController;

- (void)drawNewCard:(NSInteger)numberOfCards completion:(void (^) (NSArray <TRWCard *> *))completion;

- (void)fetchImageFromCard:(TRWCard *)card completion:(void(^)(UIImage *))completion;

@end
