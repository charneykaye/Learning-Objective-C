//
//  main.m
//  prog10.0
//
//  Created by Nick Kaye on 4/16/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Cat.h"
#import "Dog.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Cat * myCat = [Cat new];
        Dog * myDog = [Dog new];        
        [myCat holler];
        [myDog holler];
        
    }
    return 0;
}

