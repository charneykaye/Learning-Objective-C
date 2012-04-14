//
//  main.m
//  prog8x NSString test
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString * myString = @"Something";
        NSLog(@"%lu",myString.length);
    }
    return 0;
}

