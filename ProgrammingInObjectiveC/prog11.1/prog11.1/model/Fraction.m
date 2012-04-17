//
//  Fraction.m
//  prog7.1 fraction test
//
//  Created by Nick Kaye on 4/11/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

#pragma mark properties

@synthesize numerator = _numerator;
@synthesize denominator = _denominator;

static int count;

#pragma mark setters

-(void) setTo: (int) n over: (int) d
{
    self.numerator = n;
    self.denominator = d;
}

-(void) scan
{
    int a,b;
    count++;
    printf("enter fraction %i as #/#:\n",count);
    scanf("%i/%i",&a,&b);
    [self setTo: a over: b];    
    printf("\n");
}

#pragma mark reduction

-(void) reduce
{
    int gcd = [self gcdOfInt:self.numerator andInt:self.denominator];
    self.numerator /= gcd;
    self.denominator /= gcd;
    if (self.denominator<0) {
        self.numerator = -self.numerator;
        self.denominator = -self.denominator;
    }
}

-(int) gcdOfInt: (int) a andInt:(int)b
{
    int temp;
    while ( b != 0 ) {
        temp = a %b;
        a = b;
        b = temp;
    }
    return a;
}

#pragma mark output

-(double) convertToNum
{
    if (self.denominator==0)
        return NAN;
    return (double) self.numerator / self.denominator;
}

-(void) print
{
    int viewN = self.numerator, viewD = self.denominator;
    int sign;
    int wholes;
    // translate a negative fraction into a positive one with a negative sign
    if (self.numerator>=0)
        sign = 1;
    else {
        sign = -1;
        viewN = -viewN;
    }
    // if the positive fraction is less than one, print the original simple
    if ( viewN < viewD )
        printf("%i/%i",self.numerator,self.denominator);
    // else print # wholes + #/#
    else {
        wholes = viewN / viewD;
        viewN = viewN % viewD;
        if (viewN != 0)
            printf("%i %i/%i", wholes * sign, viewN, viewD);
        else
            printf("%i", wholes * sign);
    }
}


@end
