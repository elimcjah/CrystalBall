//
//  ViewController.h
//  CrystalBall
//
//  Created by Amit Bijlani on 6/26/12.
//  Copyright (c) 2012 Treehouse Island Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
}


@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *predictionArray;

- (IBAction)buttonPressed:(id)sender;


@end
