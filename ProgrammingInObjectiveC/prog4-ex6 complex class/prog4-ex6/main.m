//
//  main.m
//  prog4-ex6
//
//  Created by Nick Kaye on 4/10/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * Complex Interface
 */
@interface Complex: NSObject
    -(void) setReal: (double) a;
    -(void) setImaginary: (double) b;
    -(void) print;
    -(double) real;
    -(double) imaginary;
@end    

/**
 * Complex Implementation
 */
@implementation Complex
{
    double real;
    double imaginary;
}

    -(void) setReal: (double) a
    {
        real = a;
    }

    -(void) setImaginary: (double) b
    {
        imaginary = b;
    }

    -(void) print
    {
        NSLog(@"%f + %fi",real,imaginary);
    }

    -(double) real
    {
        return real;
    }

    -(double) imaginary
    {
        return imaginary;
    }

@end

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        Complex *compOne = [Complex new];
        [compOne setReal:5.0];
        [compOne setImaginary:1.0];
        [compOne print];
        
    }
    return 0;
}

