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

-(void) setX: (float) sX andY: (float) sY{
    x = sX;
    y = sY;
}

-(void) assumePropertiesOf: (XYPoint *) pt
{
    x = pt.x;
    y = pt.y;
}

-(float) distanceTo:(XYPoint *)pt
{
    float dx = pt.x - x;
    float dy = pt.y - y;
    return sqrtf( dx * dx + dy * dy );
}

-(XYPoint *) clone
{
    XYPoint * output = [XYPoint new];
    [output assumePropertiesOf:self];
    return output;
}

-(void) print
{
    printf("XY[%f,%f]",x,y);
}

-(void) scan
{
    float sX,sY;
    scanf("%f,%f",&sX,&sY);
    x = sX;
    y = sY;
}

@end
