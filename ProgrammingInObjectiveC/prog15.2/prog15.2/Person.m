//
//  Person.m
//  prog15.2
//
//  Created by Nick Kaye on 4/17/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name = _name;

-(NSString *) description
{
    return [NSString stringWithFormat:@"%@",self.name];
}

@end
