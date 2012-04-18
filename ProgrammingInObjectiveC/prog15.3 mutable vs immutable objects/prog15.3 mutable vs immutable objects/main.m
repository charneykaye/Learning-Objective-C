//
//  main.m
//  prog15.3 mutable vs immutable objects
//
//  Created by Nick Kaye on 4/18/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString            *strA = @"This is string A";
        NSString            *strB = @"This is string B";
        NSString            *res;
        NSComparisonResult  compareResult;
        
        NSLog(@"Length of strA: %1lu", [strA length]);

        res = [NSString stringWithString:strA];
        NSLog(@"copy: %@", res);
        
        NSLog(@"res %s equal to strA",[res isEqualToString:strA] ? "is" : "is not");

        res = [strA stringByAppendingString:strB];
        NSLog(@"Concatenation: %@", res);
        
        NSLog(@"strA %s equal to strB",[strA isEqualToString:strB] ? "is" : "is not");
        
        compareResult = [strA compare: strB];
        switch(compareResult)
        {
            case NSOrderedAscending:
                NSLog(@"strA < strB");
                break;
            case NSOrderedSame:
                NSLog(@"strA = strB");
                break;
            case NSOrderedDescending:
                NSLog(@"strA > strB");
                break;
        }
        
        res = [strA uppercaseString];
        NSLog(@"Uppercase conversion: %s", [res UTF8String]);

        res = [strA lowercaseString];
        NSLog(@"Lowercase conversion: %s", [res UTF8String]);

        NSLog(@"Original string: %@",strA);
    }
    return 0;
}

