//
//  main.m
//  prog9.2 fractions complexes dynamic binding
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Complex.h"
#import "Fraction.h"

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
        [fracOne subtract: fracThree];
        [fracOne multiply: fracFour];
        [fracOne divide: fracFive];
        
        
        
        /*
         
        // the original classwork:
         
        id dataValue;
        
        Fraction * f1 = [Fraction new];
        Complex * c1 = [Complex new];
        
        [f1 setTo: 2 over: 5];
        [c1 setReal: 10.0 andImaginary:2.5];
        
        // first dataValue gets a fraction
        dataValue = f1;
        [dataValue print];

        // second dataValue gets a complex
        dataValue = c1;
        [dataValue print];
         
         */
        
    }
    return 0;
}
