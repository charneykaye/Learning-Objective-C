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

#pragma mark modification
-(void) reduce;

#pragma mark utility
+(int) gcdOfInt: (int) a andInt: (int) b;

#pragma mark copying
-(Fraction *) clone;
-(Fraction *) cloneScaledBy: (int) i;

#pragma mark output
-(double) convertToNum;
-(NSString *) description;

@end

#pragma mark fraction arithmetic operations
@interface Fraction (MathOps)
-(Fraction *) add: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
-(Fraction *) inv;
@end

#pragma mark fraction comparison operations
@interface Fraction (Comparison)
-(BOOL) isEqualTo: (Fraction *) f;
-(BOOL) isLessThanOrEqualTo: (Fraction *) f;
-(BOOL) isLessThan: (Fraction *) f;
-(BOOL) isGreaterThanOrEqualTo: (Fraction *) f;
-(BOOL) isGreaterThan: (Fraction *) f;
-(BOOL) isNotEqualTo: (Fraction *) f;
-(int) compare: (Fraction *) f;
@end
