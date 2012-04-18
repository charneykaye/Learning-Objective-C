//
//  main.m
//  prog15.2 Fraction
//
//  Created by Nick Kaye on 4/17/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction.h"
#import "global.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // new max-size Fraction
        Fraction * fracMax = [[Fraction alloc] initWithNumerator:100 andDenominator:100];
        
        // new random fractions
        Fraction * fracOne = [[Fraction alloc] initRandomWithMax:fracMax];
        Fraction * fracTwo = [[Fraction alloc] initRandomWithMax:fracMax];
        Fraction * fracThree = [[Fraction alloc] initRandomWithMax:fracMax];
        Fraction * fracFour = [[Fraction alloc] initRandomWithMax:fracMax];
        Fraction * fracFive = [[Fraction alloc] initRandomWithMax:fracMax];
        
        // test fraction arithmetic methods
        [fracOne add: fracTwo];
        [fracOne mul: fracThree];
        [fracOne sub: fracFour];
        [fracOne div: fracFive];
        [fracOne inv];
        [fracThree inv];

        // test fraction comparison methods
        [fracOne isEqualTo:fracTwo];
        [fracOne isLessThan:fracTwo];
        [fracOne isGreaterThan:fracTwo];
        [fracOne isLessThanOrEqualTo:fracThree];
        [fracOne isGreaterThanOrEqualTo:fracThree];
        [fracOne isNotEqualTo:fracThree];
        [fracOne isEqualTo:fracOne];
        [fracOne isLessThanOrEqualTo:fracFour];
        [fracOne isLessThan:fracFour];
        [fracOne isGreaterThan:fracFour];
        [fracOne isLessThanOrEqualTo:fracFive];
        [fracOne isGreaterThanOrEqualTo:fracFive];
        [fracOne isNotEqualTo:fracFive];
        
    }
    return 0;
}

