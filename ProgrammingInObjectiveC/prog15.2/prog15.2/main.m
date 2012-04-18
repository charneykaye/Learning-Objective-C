//
//  main.m
//  prog15.2
//
//  Created by Nick Kaye on 4/17/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person * dude = [Person new];
        dude.name = @"Frojo";
        
        NSLog(@"Take a look at %@",dude);
        
    }
    return 0;
}

