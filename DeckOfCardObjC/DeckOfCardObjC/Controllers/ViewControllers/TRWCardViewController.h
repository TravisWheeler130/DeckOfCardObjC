//
//  TRWCardViewController.h
//  DeckOfCardObjC
//
//  Created by Travis Wheeler on 10/7/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TRWCardViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *suitLabel;

@property (weak, nonatomic) IBOutlet UIImageView *cardImageView;

- (IBAction)drawNewButtonTapped:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
