//
//  Fraction.m
//  prog7.1 fraction test
//
//  Created by Nick Kaye on 4/11/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
    double num = [self convertToNum];
    NSLog(@"Fraction is %i/%i aka %f",numerator,denominator,num);
}

-(double) convertToNum
{
    if (denominator==0)
        return NAN;
    return (double) numerator / denominator;
}

@end
