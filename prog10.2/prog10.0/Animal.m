//
//  Animal.m
//  prog10.0
//
//  Created by Nick Kaye on 4/16/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Animal.h"

/**
 *  Global
 */

static int gCount;

/**
 *  Mammal Animal
 */
@implementation Animal

// Initializer
@synthesize id = _id;

-(Animal *) init
{
    // pass through
    self = [super init];
    if (!self) return self;
    
    // increase animal count and save id
    ++gCount;
    self.id = gCount;
    
    printf("Mammal #%i created with class %s\n",[self id],[[[self class] description] UTF8String]);
    return self;
}

// Methods
-(void) holler
{
}

-(void) doAction:(NSString*) action
{
    if (action)
        printf("%s: %s.\n", [self.name UTF8String], [action UTF8String]);
    else
        printf("i am %s.\n", [self.name UTF8String]);
}

/*
 *  Properties
 */

// name getter returns _name if set, else self.typeName
-(NSString *) name
{
    return _name ? _name : self.typeName;
}
-(void) setName:(NSString *) s
{
    _name = s;
}

// typeName getter returns _typeName if set, else "Animal"
-(NSString *) typeName
{
    return _typeName ? _typeName : @"Animal";
}
-(void) setTypeName:(NSString *) s
{
    _typeName = s;
}

+(int) count;
{
    return gCount;
}

@end
