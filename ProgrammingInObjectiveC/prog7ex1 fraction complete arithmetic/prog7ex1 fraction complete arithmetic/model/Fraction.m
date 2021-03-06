//
//  Fraction.m
//  prog7.1 fraction test
//
//  Created by Nick Kaye on 4/11/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

/**
 *  Setting
 */

@synthesize numerator, denominator;

static int count;

-(void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
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

/**
 *  Arithmetic
 */

-(void) add: (Fraction *) f
{    
    [self print];
    printf(" plus ");
    [f print];
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = f.denominator * denominator;
    printf(" = ");
    [self reduce];
    [self print];
    printf("\n\n");
}

-(void) subtract: (Fraction *) f
{    
    [self print];
    printf(" minus ");
    [f print];
    numerator = numerator * f.denominator - denominator * f.numerator;
    denominator = f.denominator * denominator;
    printf(" = ");
    [self reduce];
    [self print];
    printf("\n\n");
}

-(void) multiply: (Fraction *) f
{    
    [self print];
    printf(" times ");
    [f print];
    numerator = numerator * f.numerator;
    denominator = denominator * f.denominator;
    printf(" = ");
    [self reduce];
    [self print];
    printf("\n\n");
}

-(void) divide: (Fraction *) f
{    
    [self print];
    printf(" divided by ");
    [f print];
    numerator = numerator * f.denominator;
    denominator = f.numerator * denominator;
    printf(" = ");
    [self reduce];
    [self print];
    printf("\n\n");
}

-(void) reduce
{
    int gcd = [self gcdOfInt:numerator andInt:denominator];
    numerator /= gcd;
    denominator /= gcd;
    if (denominator<0) {
        numerator = -numerator;
        denominator = -denominator;
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

/**
 *  Output
 */

-(double) convertToNum
{
    if (denominator==0)
        return NAN;
    return (double) numerator / denominator;
}

-(void) print
{
    int viewN = numerator, viewD = denominator;
    int sign;
    int wholes;
    // translate a negative fraction into a positive one with a negative sign
    if (numerator>=0)
        sign = 1;
    else {
        sign = -1;
        viewN = -viewN;
    }
    // if the positive fraction is less than one, print the original simple
    if ( viewN < viewD )
        printf("%i/%i",numerator,denominator);
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
