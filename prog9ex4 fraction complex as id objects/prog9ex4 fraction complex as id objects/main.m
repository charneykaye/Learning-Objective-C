//
//  main.m
//  prog9ex4 fraction complex as id objects
//
//  Created by Nick Kaye on 4/14/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Complex.h"
#import "Fraction.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        // for result
        id result;
        
        // setup fractions
        Fraction * fracOne = [Fraction new];
        Fraction * fracTwo = [Fraction new];
        [fracOne scan];
        [fracTwo scan];
        
        // setup complexes
        Complex * compOne = [Complex new];
        Complex * compTwo = [Complex new];
        [compOne setReal:18.0 andImaginary:2.5];
        [compTwo setReal:-5.0 andImaginary:3.2];
        
        // run it
        result = [fracOne add: fracTwo];
        
        result = [fracOne multiply: fracTwo];
        result = [fracOne subtract: fracTwo];
        result = [fracOne divide: fracTwo];
        result = [compOne add: compTwo];
                
        //        [compResult reduce];  // ch. 9 ex. 1
        
        
    }
    return 0;
}