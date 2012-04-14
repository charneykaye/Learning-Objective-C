//
//  Fraction.h
//  prog7.1 fraction test
//
//  Created by Nick Kaye on 4/11/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

/**
 *  Setting
 */
@property int numerator, denominator;
-(void) setTo: (int) n over: (int) d;
-(void) scan;

/**
 *  Arithmetic
 */
-(Fraction *) add: (Fraction *) f;
-(void) reduce;
-(int) gcdOfInt: (int) a andInt: (int) b;

/**
 *  Output
 */
-(double) convertToNum;
-(void) print;

@end
