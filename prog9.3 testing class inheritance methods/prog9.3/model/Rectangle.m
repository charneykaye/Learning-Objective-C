//
//  Rectangle.m
//  prog8.2 rectangle class
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint * origin;
}

@synthesize height,width;
@synthesize name;

-(void) setOrigin:(XYPoint *) pt
{
    if (!origin)
        origin = [XYPoint new];
    [origin assumePropertiesOf:pt];
}

-(XYPoint *) origin
{
    return [origin clone];
}

-(void) setWidth:(float) w andHeight:(float)h
{
    width = w;
    height = h;
}

-(BOOL) containsPoint: (XYPoint *) pt
{
    return ( pt.x >= origin.x && pt.x <= ( origin.x + width ) && pt.y >= origin.y && pt.y <= ( origin.y + height ));
}


-(float) area {
    return height * width;
}

-(float) perimeter {
    return 2 * height + 2 * width;
}

-(void) print {
    printf("Rectangle %c - origin:",name);
    [origin print];
    printf(" w:%f h:%f area:%f perimeter:%f\n",width,height,[self area],[self perimeter]);
}


@end