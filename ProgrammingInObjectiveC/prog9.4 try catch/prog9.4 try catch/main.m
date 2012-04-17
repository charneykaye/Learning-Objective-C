//
//  main.m
//  prog9.4 try catch
//
//  Created by Nick Kaye on 4/14/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction * f = [Fraction new];
        @try {
            [f noSuchMethod];
        }
        @catch (NSException * e) {
            NSLog(@"Caught %@%@", [e name], [e reason]);
        }
        NSLog (@"Execution continues!");
        
    }
    return 0;
}

