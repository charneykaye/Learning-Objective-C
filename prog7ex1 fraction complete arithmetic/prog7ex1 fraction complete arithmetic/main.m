//
//  main.m
//  prog7ex1 fraction complete arithmetic
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction *fracOne = [Fraction new];
        Fraction *fracTwo = [Fraction new];
        Fraction *fracThree = [Fraction new];
        Fraction *fracFour = [Fraction new];
        Fraction *fracFive = [Fraction new];
        
        [fracOne scan];
        [fracTwo scan];
        [fracThree scan];
        [fracFour scan];
        [fracFive scan];
        
        [fracOne add: fracTwo];
        [fracOne subtract: fracThree];
        [fracOne multiply: fracFour];
        [fracOne divide: fracFive];
        
    }
    return 0;
}

