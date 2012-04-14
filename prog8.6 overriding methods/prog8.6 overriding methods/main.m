//
//  main.m
//  prog8.6 overriding methods
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "ClassA.h"
#import "ClassB.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        ClassA * a = [ClassA new];
        ClassB * b = [ClassB new];
        [a initVar];
        [b initVar];
        [a printVar];
        [b printVar];
    }
    return 0;
}

