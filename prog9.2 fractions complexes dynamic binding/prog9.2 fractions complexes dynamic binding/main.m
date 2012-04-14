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
        
    }
    return 0;
}
