//
//  Fraction.h
//  prog7.1 fraction test
//
//  Created by Nick Kaye on 4/11/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

#pragma mark properties
@property int numerator, denominator;

#pragma mark initializer
-(Fraction *) initWithNumerator: (int) n andDenominator: (int) d;
-(Fraction *) initRandomWithMax: (Fraction *) m;

#pragma mark setters
-(void) setTo: (int) n over: (int) d;
-(void) scan;

#pragma mark reduction
-(void) reduce;
+(int) gcdOfInt: (int) a andInt: (int) b;

#pragma mark copying
-(Fraction *) clone;

#pragma mark output
-(double) convertToNum;
-(void) print;

@end

@interface Fraction (MathOps)

#pragma mark fraction arithmetic operations
-(Fraction *) add: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
-(Fraction *) inv;

@end

@interface Fraction (Comparison)

-(BOOL) isEqualTo: (Fraction *) f;
-(BOOL) isLessThanOrEqualTo: (Fraction *) f
-(int) compare: (Fraction *) f;

@end
