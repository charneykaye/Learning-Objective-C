//
//  main.m
//  prog7.3 fraction adding
//
//  Created by Nick Kaye on 4/12/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction *fracOne = [Fraction new];
        Fraction *fracTwo = [Fraction new];
        
        [fracOne scan];
        [fracTwo scan];
        
        [fracOne add: fracTwo];
        [fracOne reduce];
        
    }
    return 0;
}

