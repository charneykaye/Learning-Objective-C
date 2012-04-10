//
//  main.m
//  prog4.6 calculator class
//
//  Created by Nick Kaye on 4/10/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * Calculator Interface
 */
@interface Calculator: NSObject

    // accumulator methods
    -(void) setAccumulator: (double) value;
    -(void) clear;
    -(double) accumulator;

    // arithmetic methods
    -(void) add: (double) value;
    -(void) subtract: (double) value;
    -(void) multiply: (double) value;
    -(void) divide: (double) value;

@end

/*
 * Calculator Implementation
 */
@implementation Calculator
{
    double accumulator;
}

    -(void) setAccumulator: (double) value
    {
        accumulator = value;
    }

    -(void) clear
    {
        accumulator = 0;
    }

    -(double) accumulator
    {
        return accumulator;
    }

    -(void) add: (double) value
    {
        accumulator += value;
    }

    -(void) subtract: (double) value
    {
        accumulator -= value;
    }

    -(void) multiply: (double) value
    {
        accumulator *= value;
    }

    -(void) divide: (double) value
    {
        accumulator /= value;
    }

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Calculator *deskCalc = [Calculator new];
        
        [deskCalc setAccumulator:100.0];
        [deskCalc add:200.0];
        [deskCalc divide:15.0];
        [deskCalc subtract:10.0];
        [deskCalc multiply:5];
        NSLog(@"The result is %g", [deskCalc accumulator]);
    }
    return 0;
}

