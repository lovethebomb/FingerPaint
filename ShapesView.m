//
//  ShapesView.m
//  FingerPaint
//
//  Created by HEYMES Lucas on 26/10/12.
//  Copyright (c) 2012 Heymès Lucas. All rights reserved.
//

#import "ShapesView.h"

@implementation ShapesView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation. */
- (void)drawRect:(CGRect)rect
{
    NSLog(@"Entering drawing mode!");
    // Drawing code
    
    context = UIGraphicsGetCurrentContext();
    CGContextAddLines(context, points, addedPoints);
    CGContextSetRGBStrokeColor(context, self.colorR, self.colorG, self.colorB, 0.8);
    CGContextStrokePath(context);

   }

/* Méthodes Touch */
#pragma mark - Méthodes Touch
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    addedPoints = 1;
    
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    NSLog(@"New Touch ! => Point : %f %f", p.x, p.y);
    points[0] = p;

}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{    
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    
    NSLog(@" Moved! => Point : %f %f", p.x, p.y);
    NSLog(@"addedPoints : %i", addedPoints);

    // Add point and draw
    
    if(addedPoints < 1000) {
        points[addedPoints] = p;
        addedPoints++;
        [self setNeedsDisplay];
    }
    else {
        NSLog(@"Too many points!");
    }
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"red=%f green=%f blue=%f", self.colorR, self.colorG, self.colorB];
}

- (void)changeColorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue
{
    self.colorR = red;
    self.colorG = green;
    self.colorB = blue;
    [self setNeedsDisplay];
}


@end
