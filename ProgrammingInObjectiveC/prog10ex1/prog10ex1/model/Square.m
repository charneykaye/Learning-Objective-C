//
//  Square.m
//  prog8.2 rectangle class
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Square.h"

@implementation Square

-(id) initWidthSide: (int) s
{
    self = [super initWithWidth:s andHeight:s];
    return self;
}

-(void) setSide: (int) s
{
    [self setWidth:s andHeight:s];
}

-(int) side
{
    return self.width;
}

@end
