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

#pragma mark initializer
-(Fraction *) initWithNumerator: (int) n andDenominator: (int) d
{
    self = [super init];
    if (!self) return self;
    self.numerator = n;
    self.denominator = d;
    return self;
}

-(Fraction *) initRandomWithMax: (Fraction *) m
{
    self = [super init];
    if (!self) return self;
    if (m.numerator>0)
        self.numerator = arc4random() % m.numerator;
    if (m.denominator>0)
        self.denominator = arc4random() % m.denominator;
    return self;
}

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
    // check for divide-by-zero risk
    if (!self.denominator>0) return;
    // find greatest common divisor
    int gcd = [Fraction gcdOfInt:self.numerator andInt:self.denominator];
    // divide them both
    self.numerator /= gcd;
    self.denominator /= gcd;
    // if denominator is negative, flip sign of 
    // numerator and denominator.  side effect is
    // auto correct double-negative fractions e.g. -1/-2
    if (self.denominator<0) {
        self.numerator = -self.numerator;
        self.denominator = -self.denominator;
    }
}

+(int) gcdOfInt: (int) a andInt:(int)b
{
    int temp;
    while ( b != 0 ) {
        temp = a %b;
        a = b;
        b = temp;
    }
    return a;
}

#pragma mark copying

-(Fraction *) clone 
{
    Fraction * o = [[Fraction alloc] initWithNumerator: self.numerator andDenominator:
                    self.denominator];
    return o;
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
        // check for divide by zero risk
        if (!viewD>0) return;
        wholes = viewN / viewD;
        viewN = viewN % viewD;
        if (viewN != 0)
            printf("%i %i/%i", wholes * sign, viewN, viewD);
        else
            printf("%i", wholes * sign);
    }
}

@end

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
    // check for divide-by-zero risk
    if (!f.numerator>0) return nil;
    if (!self.denominator>0) return nil;
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

-(Fraction *) inv
{    
    // check for divide-by-zero risk
    if (!self.numerator>0) return nil;
    // perform function
    Fraction * result = [Fraction new];
    result.numerator = self.denominator;
    result.denominator = self.numerator;
    [result reduce];
    // print
    [self print];
    printf(" inverted = ");
    [result print];
    printf("\n\n");
    // output
    return result;
}

-(Fraction *) scaleByInt: (int) i
{
    // check for divide-by-zero risk
    if (!self.numerator>0) return nil;
    // perform function
    Fraction * result = [Fraction new];
    result.numerator = self.numerator * i;
    result.denominator = self.denominator * i;
    [result reduce];
    // print
    [self print];
    printf(" scaled by %i = ",i);
    [result print];
    printf("\n\n");
    // output
    return result;    
}

@end

@implementation Fraction (Comparison)

-(BOOL) isEqualTo: (Fraction *) f
{
    BOOL result = ([self compare:f]==0);
    // print
    [self print];
    printf(" %s equal to ",result ? "is" : "is not");
    [f print];
    printf("\n\n");
    // output
    return result;
}

-(BOOL) isLessThanOrEqualTo: (Fraction *) f
{
    BOOL result = ([self compare:f]<=0);
    // print
    [self print];
    printf(" %s less than or equal to ",result ? "is" : "is not");
    [f print];
    printf("\n\n");
    // output
    return result;
}

-(BOOL) isLessThan: (Fraction *) f
{
    BOOL result = ([self compare:f]<0);
    // print
    [self print];
    printf(" %s less than ",result ? "is" : "is not");
    [f print];
    printf("\n\n");
    // output
    return result;
}

-(BOOL) isGreaterThanOrEqualTo: (Fraction *) f
{
    BOOL result = ([self compare:f]>=0);
    // print
    [self print];
    printf(" %s greater than or equal to ",result ? "is" : "is not");
    [f print];
    printf("\n\n");
    // output
    return result;
}

-(BOOL) isGreaterThan: (Fraction *) f
{
    BOOL result = ([self compare:f]>0);
    // print
    [self print];
    printf(" %s greater than ",result ? "is" : "is not");
    [f print];
    printf("\n\n");
    // output
    return result;
}

-(BOOL) isNotEqualTo: (Fraction *) f
{
    return ![self isEqualTo:f];
}

-(int) compare: (Fraction *) f
{
    int result = NAN;
    Fraction * a = [self clone];
    Fraction * b = [f clone];
    [a reduce];
    [b reduce];
    [a scaleByInt: b.denominator];
    [b scaleByInt: a.denominator];
     // scale Fraction a * the denominator of b
     // fractions now have same denominator; compare numerators
    if (b.numerator == a.numerator)
        result = 0;
    if (b.numerator < a.numerator)
        result = -1;
    else if (b.numerator > a.numerator)
        result = 1;
    /*
    // compare number values
    double m = [a convertToNum];
    double n = [b convertToNum];
    if (n>m)
        result = 1;
    else if (n<m)
        result = -1;
     */
    // print
    [self print];
    printf(" compare ");
    [f print];
    printf(" = %i\n\n", result);
    // output
    return result;
}

@end
