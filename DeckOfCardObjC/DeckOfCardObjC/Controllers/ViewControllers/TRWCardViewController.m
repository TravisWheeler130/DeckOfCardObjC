//
//  TRWCardViewController.m
//  DeckOfCardObjC
//
//  Created by Travis Wheeler on 10/7/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

#import "TRWCardViewController.h"
#import "TRWCardController.h"
#import "TRWCard.h"

@interface TRWCardViewController ()

@end

@implementation TRWCardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)drawNewButtonTapped:(UIButton *)sender {
    // calling our draw card function on our shared instance, we added an internal name for the array that we completed with and used that array to fetch an image by passig in the first card in the array to our fetch image method.
    [TRWCardController.sharedController drawNewCard:1 completion:^(NSArray<TRWCard *> * cardArray) {
        [TRWCardController.sharedController fetchImageFromCard:cardArray[0] completion:^(UIImage * image) {
            // same as dispatchQueue.main.async
            dispatch_async(dispatch_get_main_queue(), ^{
                self.cardImageView.image = image;
                TRWCard * card = cardArray[0];
                self.suitLabel.text = card.suit;
            });
        }];
    }];
}
@end
