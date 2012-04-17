//
//  main.m
//  prog8.0
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "ClassA.h"
#import "ClassB.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        ClassB * b = [ClassB new];
        [b initVar];
        [b printVar];
    }
    return 0;
}

