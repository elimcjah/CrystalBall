//
//  ViewController.m
//  CrystalBall
//
//  Created by Amit Bijlani on 6/26/12.
//  Copyright (c) 2012 Treehouse Island Inc. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize predictionLabel;
@synthesize predictionArray;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"background.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [self.view insertSubview:imageView atIndex:0];
    
    self.predictionArray = [[NSArray alloc] initWithObjects:@"It is certain",@"It is decidedly so",@"All signs say YES",
                                @"The stars are not aligned",
                                @"My reply is no",
                                @"It is doubtful",
                                @"Better not tell you now",
                                @"Concentrate and ask again",
                                @"Unable to answer now", nil];

}

- (void)viewDidUnload
{
    [self setPredictionLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)buttonPressed:(id)sender { 
    NSUInteger index = arc4random_uniform(self.predictionArray.count);
    self.predictionLabel.text = [self.predictionArray objectAtIndex:index];
}
@end
