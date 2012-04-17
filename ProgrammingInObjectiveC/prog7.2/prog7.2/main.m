//
//  main.m
//  prog7.2
//
//  Created by Nick Kaye on 4/12/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Fraction *frac = [Fraction new];
        [frac setTo: 1 over: 2];
        [frac print];
        
    }
    return 0;
}

