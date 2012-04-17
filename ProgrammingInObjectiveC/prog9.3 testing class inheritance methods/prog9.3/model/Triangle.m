//
//  Triangle.m
//  prog8ex Rectangle XYPoint Intersection
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle
{
    XYPoint * pointA;
    XYPoint * pointB;
    XYPoint * pointC;
}

@synthesize name;

-(void) setA:(XYPoint *) A andB:(XYPoint *) B andC:(XYPoint *) C
{
    [self setPointA:A];
    [self setPointB:B];
    [self setPointC:C];
}

-(void) setPointA:(XYPoint *) pt
{
    if (!pointA)
        pointA = [XYPoint new];
    [pointA assumePropertiesOf:pt];
}

-(void) setPointB:(XYPoint *) pt
{
    if (!pointB)
        pointB = [XYPoint new];
    [pointB assumePropertiesOf:pt];
}

-(void) setPointC:(XYPoint *) pt
{
    if (!pointC)
        pointC = [XYPoint new];
    [pointC assumePropertiesOf:pt];
}

-(XYPoint *) pointA
{
    return [pointA clone];
}

-(XYPoint *) pointB
{
    return [pointB clone];
}

-(XYPoint *) pointC
{
    return [pointC clone];
}

-(float) area {
    float A = [pointA distanceTo:pointB];
    float B = [pointB distanceTo:pointC];
    float C = [pointC distanceTo:pointA];
    float t = ( A * A - B * B + C * C ) / ( 2 * C );
    float s = sqrtf( A * A - t * t );
    return s * C / 2;
}

-(float) perimeter {
    return [pointA distanceTo:pointB] + [pointB distanceTo:pointC] + [pointC distanceTo:pointA];
}

-(void) print {
    printf("Triangle %c is ",name);
    [pointA print];
    printf("-");
    [pointB print];
    printf("-");
    [pointC print];
    printf(" area:%f perimeter:%f\n",[self area],[self perimeter]);
}
@end
