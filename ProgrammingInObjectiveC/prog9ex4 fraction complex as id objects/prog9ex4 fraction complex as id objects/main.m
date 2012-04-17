//
//  main.m
//  prog9ex4 fraction complex as id objects
//
//  Created by Nick Kaye on 4/14/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Fraction.h"

void logResult(id result)
{
    printf( "result is a member of the %s class\n\n",
        [[[result class] description] UTF8String]
        );
}

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
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
        logResult([fracOne add: fracTwo]);
        logResult([fracOne multiply: fracTwo]);
        logResult([fracOne subtract: fracTwo]);
        logResult([fracOne divide: fracTwo]);
        logResult([compOne add: compTwo]);
        logResult([compOne add: fracTwo]);
                
        //        [compResult reduce];  // ch. 9 ex. 1
        
        
    }
    return 0;
}