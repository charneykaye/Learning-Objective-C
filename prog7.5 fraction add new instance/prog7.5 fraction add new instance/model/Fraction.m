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

-(void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}

-(void) scan
{
    int a,b;
    printf("enter a fraction as #/#:\n");
    scanf("%i/%i",&a,&b);
    [self setTo: a over: b];    
    printf("\n");
}

/**
 *  Arithmetic
 */

-(Fraction *) add: (Fraction *) f
{    
    Fraction * result = [Fraction new];
    printf("%i/%i + %i/%i = ",numerator,denominator,f.numerator,f.denominator);
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = f.denominator * denominator;
    [result reduce];
    printf("%i/%i\n\n",result.numerator,result.denominator);
    return result;
}

-(void) reduce
{
    printf("%i/%i reduces to ",numerator,denominator);
    int gcd = [self gcdOfInt:numerator andInt:denominator];
    numerator /= gcd;
    denominator /= gcd;
    printf("%i/%i\n\n",numerator,denominator);
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
    double num = [self convertToNum];
    printf("Fraction is %i/%i aka %f",numerator,denominator,num);
}


@end
