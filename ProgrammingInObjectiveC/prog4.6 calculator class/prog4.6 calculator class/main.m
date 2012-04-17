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
    -(double) setAccumulator: (double) value;
    -(double) clear;
    -(double) accumulator;
    -(double) memory;

    // arithmetic methods
    -(double) add: (double) value;
    -(double) subtract: (double) value;
    -(double) multiply: (double) value;
    -(double) divide: (double) value;

    // special methods
    -(double) changeSign;
    -(double) reciprocal;
    -(double) xSquared;

    // memory methods
    -(double) memoryClear;
    -(double) memoryStore;
    -(double) memoryRecall;
    -(double) memoryAdd: (double) value;
    -(double) memorySubtract: (double) value;

@end

/*
 * Calculator Implementation
 */
@implementation Calculator
{
    double accumulator;
    double memory;
}

    -(double) setAccumulator: (double) value
    {
        return accumulator = value;
    }

    -(double) clear
    {
        return accumulator = 0;
    }

    -(double) accumulator
    {
        return accumulator;
    }

    -(double) memory
    {
        return memory;
    }

    -(double) add: (double) value
    {
        return accumulator += value;
    }

    -(double) subtract: (double) value
    {
        return accumulator -= value;
    }

    -(double) multiply: (double) value
    {
        return accumulator *= value;
    }

    -(double) divide: (double) value
    {
        return accumulator /= value;
    }

    -(double) changeSign
    {
        return accumulator = -accumulator;
    }

    -(double) reciprocal
    {
        return accumulator = 1/accumulator;
    }

    -(double) xSquared{
        return accumulator *= accumulator;
    }

    -(double) memoryClear {
        memory = 0;
        return accumulator;
    }

    -(double) memoryStore {
        memory = accumulator;
        return accumulator;
    }

    -(double) memoryRecall {
        accumulator = memory;
        return accumulator;    
    }

    -(double) memoryAdd: (double) value {
        memory += value;
        return accumulator;    
    }

    -(double) memorySubtract: (double) value {
        memory -= value;
        return accumulator;    
    }

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Calculator *deskCalc = [Calculator new];
        
        NSLog(@"Set to %g", [deskCalc setAccumulator:100.0]);
        NSLog(@"add %g = %g", 200.0, [deskCalc add:200.0]);
        NSLog(@"divide by %g = %g", 15.0, [deskCalc divide:15.0]);
        NSLog(@"subtract %g = %g", 10.0, [deskCalc subtract:10.0]);
        NSLog(@"multiply by %g = %g", 5.0, [deskCalc multiply:5.0]);
        NSLog(@"change sign = %g", [deskCalc changeSign]);
        NSLog(@"reciprocal = %g", [deskCalc reciprocal]);
        NSLog(@"squared = %g", [deskCalc xSquared]);
        
        NSLog(@"memory store = %g (memory = %g)", [deskCalc memoryStore], [deskCalc memory]);
        NSLog(@"memory add %g = %g (memory = %g)", 25.0, [deskCalc memoryAdd:25.0], [deskCalc memory]);
        NSLog(@"memory subtract %g = %g (memory = %g)", 17.0, [deskCalc memorySubtract:17.0], [deskCalc memory]);
        NSLog(@"memory recall = %g (memory = %g)", [deskCalc memoryRecall], [deskCalc memory]);
        NSLog(@"memory clear = %g (memory = %g)", [deskCalc memoryClear], [deskCalc memory]);
       
    }
    return 0;
}

