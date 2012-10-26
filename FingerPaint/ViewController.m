//
//  ViewController.m
//  FingerPaint
//
//  Created by HEYMES Lucas on 26/10/12.
//  Copyright (c) 2012 Heymès Lucas. All rights reserved.
//

#import "ViewController.h"
#import "ShapesView.h"

@interface ViewController ()
{
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (void)dealloc {
    [super dealloc];
}

- (IBAction)colorButtonPressed:(id)sender {
    NSLog(@"colorButton pressed!");
    [(ShapesView *)self.view changeColorWithRed:(random() % 255) / 255.0 green:(random() % 255) / 255.0 blue:(random() % 255) / 255.0];
    NSLog(@"%@", self.view);
}
@end
