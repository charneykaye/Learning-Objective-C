//
//  main.m
//  prog11.1
//
//  Created by Nick Kaye on 4/17/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction+MathOps.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction * fracOne = [Fraction new];
        Fraction * fracTwo = [Fraction new];
        Fraction * fracThree = [Fraction new];
        Fraction * fracFour = [Fraction new];
        Fraction * fracFive = [Fraction new];
        
        [fracOne scan];
        [fracTwo scan];
        [fracThree scan];
        [fracFour scan];
        [fracFive scan];
        
        [fracOne add: fracTwo];
        [fracOne mul: fracThree];
        [fracOne sub: fracFour];
        [fracOne div: fracFive];
        
    }
    return 0;
}

