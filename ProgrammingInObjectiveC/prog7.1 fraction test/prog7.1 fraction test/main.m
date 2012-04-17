//
//  main.m
//  prog7.1 fraction test
//
//  Created by Nick Kaye on 4/11/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Fraction *frac = [Fraction new];
        [frac setNumerator:2];
        [frac setDenominator:5];
        [frac print];
    }
    return 0;
}

