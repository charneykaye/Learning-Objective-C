//
//  main.m
//  prog7.5 fraction add new instance
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Fraction * fracOne = [Fraction new];
        Fraction * fracTwo = [Fraction new];
        
        [fracOne scan];
        [fracTwo scan];
        
        Fraction * fracResult = [fracOne add: fracTwo];
        [fracResult print];
        
    }
    return 0;
}

