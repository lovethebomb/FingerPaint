//
//  ShapesView.h
//  FingerPaint
//
//  Created by HEYMES Lucas on 26/10/12.
//  Copyright (c) 2012 Heymès Lucas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShapesView : UIView
{
    CGContextRef context;
    CGPoint points[1000];
    int addedPoints;
}

@property (nonatomic, assign) CGFloat colorR;
@property (nonatomic, assign) CGFloat colorG;
@property (nonatomic, assign) CGFloat colorB;

- (void)changeColorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

@end
