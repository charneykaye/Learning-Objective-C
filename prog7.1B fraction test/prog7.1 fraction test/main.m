//
//  main.m
//  prog7.1 fraction conversion to number
//
//  Created by Nick Kaye on 4/11/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        // instantiate fractions
        Fraction *fracOne = [Fraction new];
        Fraction *fracTwo = [Fraction new];
        Fraction *fracThree = [Fraction new];
        
        //set fraction one to 1/3
        [fracOne setName: 'A'];
        [fracOne setNumerator: 1];
        [fracOne setDenominator: 3];
        
        //set fraction two to 3/5
        [fracTwo setName: 'B'];
        [fracTwo setNumerator: 3];
        [fracTwo setDenominator: 5];
        
        //set fraction three to 4/7
        [fracThree setName: 'C'];
        [fracThree setNumerator: 4];
        [fracThree setDenominator: 0];
        
        //display the fraction using the print method
        [fracOne print];        
        [fracTwo print];
        [fracThree print];
    }
    return 0;
}

