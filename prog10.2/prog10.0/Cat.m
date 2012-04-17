//
//  Cat.m
//  prog10.0
//
//  Created by Nick Kaye on 4/16/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Cat.h"

@implementation Cat

// Initializer
-(Cat *) init
{
    self = [super init];
    _typeName = @"Cat";
    return self;
}

// Methods
-(void) holler
{
    [self doAction:[[NSMutableString stringWithFormat:
                     @"meow, the animal count is %i",
                     [Animal count]
                     ] stringByStandardizingPath]];
}

@end
