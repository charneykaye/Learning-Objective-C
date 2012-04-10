//
//  main.m
//  prog5.3
//
//  Created by Nick Kaye on 4/10/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int n, number, triangularNumber;
        
        NSLog( @"TABLE OF TRIANGULAR NUMBERS\n");
        NSLog( @" n    triangle");
        NSLog( @"----  --------");
        
        // input
        NSLog( @"How many triangular numbers?" );
        scanf("%i", &number);
        
        triangularNumber = 0;
        
        for ( n=1; n<=number; n++ ) {
            triangularNumber += n;
//            NSLog (@"%3i %7i", n, triangularNumber);
        }
        
        NSLog(@"The %ith triangular number is %i.", number,triangularNumber);
        
    }
    return 0;
}

