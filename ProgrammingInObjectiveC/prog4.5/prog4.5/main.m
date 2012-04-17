//
//  main.m
//  prog4.5
//
//  Created by Nick Kaye on 4/9/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        float f1 = 123.125, f2, f3, f4, f5;
        int i1 = -150, i2;
        
        i2 = f1;    // floating to integer conversion
        NSLog(@"%f assigned to an int produces %i", f1, i2);
        
        f2 = i1;    // integer to floating conversion
        NSLog(@"%i assigned to a float produces %f", i1, f2);
        
        f3 = i1 / 100;  // integer divided by integer
        NSLog(@"%i divided by 100 assigned to a float produces %f", i1, f3);
        
        f4 = i1 / 100.0;    // integer divided by a float
        NSLog(@"%i divided by 100.0 assigned to a float produces %f", i1, f4);
        
        f5 = (float) i1 / 100;  // type cast operator
        NSLog(@"(float) %i divided by 100 assigned to a float produces %f", i1, f5);

        NSLog(@"(float) 6 / (float) 4 = %f", (float) 6 / (float) 4);

        int xxx = 15;
        xxx *= 5;
        NSLog(@"15 *= 5 results in %i", xxx);
        
    }
    return 0;
}

