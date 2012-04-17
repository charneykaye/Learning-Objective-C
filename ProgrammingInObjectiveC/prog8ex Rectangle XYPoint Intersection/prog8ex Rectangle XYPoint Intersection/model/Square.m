//
//  Square.m
//  prog8.2 rectangle class
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) setSide: (float) s
{
    [self setWidth:s andHeight:s];
}

-(float) side
{
    return self.width;
}

@end
