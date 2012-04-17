//
//  main.m
//  prog10.3
//
//  Created by Nick Kaye on 4/16/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

void logAnd(int a, int b)
{
    NSLog(@"%i & %i = %i", a, b, a & b);
}

void logLeftshift(int a, int b)
{
    NSLog(@"%i << %i = %i", a, b, a << b);
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // binary 0011 = decimal 3
        // binary 1001 = decimal 9
        // predicted result: binary 0001 = decimal 1
        logAnd(3, 9);

        // binary 0110 = decimal 6
        // binary 1011 = decimal 11
        // predicted result: binary 0010 = decimal 2
        logAnd(6, 11);

        // binary 1100 = decimal 12
        // binary 0111 = decimal 7
        // predicted result: binary 0100 = decimal 4
        logAnd(12, 7);

        // binary 1101 = decimal 13
        // binary 1111 = decimal 15
        // predicted result: binary 1101 = decimal 13
        logAnd(13, 15);

        // predicted result: decimal 64
        logLeftshift(4, 4);
        

    }
    return 0;
}

