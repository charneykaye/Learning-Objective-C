//
//  main.m
//  prog2
//
//  Created by Nick Kaye on 4/7/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface Fraction: NSObject
    -(void) print;
    -(void) setName: (char) x;
    -(void) setNumerator: (int) x;
    -(void) setDenominator: (int) x;
    -(char) name;
    -(int) numerator;
    -(int) denominator;
@end

//---- @implementation section ----

@implementation Fraction
    {
        char name;
        int numerator;
        int denominator;
    }
    -(void) print
    {
        NSLog(@"Fraction %c is %i/%i", name, numerator, denominator);
    }
    -(void) setName:(char) x
    {
        name = x;
    }
    -(void) setNumerator:(int) x
    {
        numerator = x;
    }
    -(void) setDenominator:(int)x
    {
        denominator = x;
    }
    -(char) name
    {
        return name;
    }
    -(int) numerator
    {
        return numerator;
    }
    -(int) denominator
    {
        return denominator;
    }
@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        /*
         Create instances of Fraction,
         using three different syntaxes
         with identical effect
         */
        // One
        Fraction *fracOne;
        fracOne = [Fraction alloc];
        fracOne = [fracOne init];
        // Two
        Fraction *fracTwo = [[Fraction alloc] init];
        // Three
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
        [fracThree setDenominator: 7];
        
        //display the fraction using the print method
        [fracOne print];        
        [fracTwo print];
        [fracThree print];
    }
    return 0;
}

