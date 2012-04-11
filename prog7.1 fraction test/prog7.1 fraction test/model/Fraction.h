//
//  Fraction.h
//  prog7.1 fraction test
//
//  Created by Nick Kaye on 4/11/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction: NSObject

@property int numerator, denominator;

-(void) print;
-(double) convertToNum;

@end