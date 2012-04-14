//
//  main.m
//  prog9.1 complex class dynamic features
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Complex.h"
#import "Fraction.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // setup fractions
        Fraction *fracOne = [Fraction new];
        Fraction *fracTwo = [Fraction new];
        Fraction *fracResult;
        [fracOne scan];
        [fracTwo scan];

        // setup complexes
        Complex *compOne = [Complex new];
        Complex *compTwo = [Complex new];
        Complex *compResult;
        [compOne setReal:18.0 andImaginary:2.5];
        [compTwo setReal:-5.0 andImaginary:3.2];
        
        // run it
        fracResult = [fracOne add: fracTwo];
        fracResult = [fracOne multiply: fracTwo];
        fracResult = [fracOne subtract: fracTwo];
        fracResult = [fracOne divide: fracTwo];
        compResult = [compOne add: compTwo];
//        compResult = [compOne multiply: compTwo];
//        compResult = [compOne subtract: compTwo];
//        compResult = [compOne divide: compTwo];
        
        
    }
    return 0;
}

