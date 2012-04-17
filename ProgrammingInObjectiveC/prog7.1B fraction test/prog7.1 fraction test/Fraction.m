//
//  Fraction.m
//  prog7.1 fraction test
//
//  Created by Nick Kaye on 4/11/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize name;
@synthesize numerator, denominator;

-(void) print
{
    double number = [self convertToNum];
    NSLog(@"Fraction %c is %i/%i aka %f ", name, numerator, denominator, number);
}
-(double) convertToNum
{
    if (denominator!= 0)
        return (double) numerator / denominator;
    else
        return NAN;
}
@end