//
//  Dog.m
//  prog10.0
//
//  Created by Nick Kaye on 4/16/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Dog.h"

@implementation Dog

// Initializer
-(Dog *) init
{
    self = [super init];
    _typeName = @"Dog";
    return self;
}

// Methods
-(void) holler
{
    [self doAction:[[NSMutableString stringWithFormat:
                     @"woof, the animal count is %i",
                     [Animal count]
                     ] stringByStandardizingPath]];
}

@end
