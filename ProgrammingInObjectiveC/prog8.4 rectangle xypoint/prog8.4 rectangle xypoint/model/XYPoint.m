//
//  XYPoint.m
//  prog8.4 rectangle xypoint
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x,y;

-(void) setX: (int) sX andY: (int) sY{
    x = sX;
    y = sY;
}

-(void) assumePropertiesOf: (XYPoint *) pt
{
    x = pt.x;
    y = pt.y;
}

-(XYPoint *) clone
{
    XYPoint * output = [XYPoint new];
    [output assumePropertiesOf:self];
    return output;
}

-(void) print
{
    printf("XY[%i,%i]",x,y);
}

@end
