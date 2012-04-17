//
//  Fraction+MathOps.m
//  prog11.1
//
//  Created by Nick Kaye on 4/17/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)

#pragma mark fraction arthmetic operations

-(Fraction *) add: (Fraction *) f
{    
    // perform function
    Fraction * result = [Fraction new];
    result.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    result.denominator = f.denominator * self.denominator;
    [result reduce];
    // print
    [self print];
    printf(" plus ");
    [f print];
    printf(" = ");
    [result print];
    printf("\n\n");
    // output
    return result;
}

-(Fraction *) sub: (Fraction *) f
{    
    // perform function
    Fraction * result = [Fraction new];
    result.numerator = self.numerator * f.denominator - self.denominator * f.numerator;
    result.denominator = f.denominator * self.denominator;
    [result reduce];
    // print
    [self print];
    printf(" minus ");
    [f print];
    printf(" = ");
    [result print];
    printf("\n\n");
    // output
    return result;
}

-(Fraction *) mul: (Fraction *) f
{    
    // perform function
    Fraction * result = [Fraction new];
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    // print
    [self print];
    printf(" times ");
    [f print];
    printf(" = ");
    [result print];
    printf("\n\n");
    // output
    return result;
}

-(Fraction *) div: (Fraction *) f
{    
    // perform function
    Fraction * result = [Fraction new];
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    [result reduce];
    // print
    [self print];
    printf(" divided by ");
    [f print];
    printf(" = ");
    [result print];
    printf("\n\n");
    // output
    return result;
}

@end
