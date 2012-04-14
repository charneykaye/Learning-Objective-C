//
//  Rectangle.m
//  prog8.2 rectangle class
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

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

-(void) setWidth:(int) w andHeight:(int)h
{
    width = w;
    height = h;
}

-(int) area {
    return height * width;
}

-(int) perimeter {
    return 2 * height + 2 * width;
}

-(void) print {
    printf("Rectangle %c - origin:",name);
    [origin print];
    printf(" w:%i h:%i area:%i perimeter:%i\n",width,height,[self area],[self perimeter]);
}


@end