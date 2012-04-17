//
//  Fraction+MathOps.h
//  prog11.1
//
//  Created by Nick Kaye on 4/17/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)

#pragma mark fraction arithmetic operations
-(Fraction *) add: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;

@end
