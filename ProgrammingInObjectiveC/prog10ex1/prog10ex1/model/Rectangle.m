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

@synthesize height = _height;
@synthesize width = _width;
@synthesize name = _name;

-(id) initWithWidth: (int) w andHeight: (int) h
{
    self = [super init];
    self.height = h;
    self.width = w;
    return self;
}

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
    self.width = w;
    self.height = h;
}

-(int) area {
    return self.height * self.width;
}

-(int) perimeter {
    return 2 * self.height + 2 * self.width;
}

-(void) print {
    printf("Rectangle %c - origin:",self.name);
    [origin print];
    printf(" w:%i h:%i area:%i perimeter:%i\n",self.width,self.height,[self area],[self perimeter]);
}


@end