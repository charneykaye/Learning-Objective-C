//
//  Rectangle.m
//  prog8.2 rectangle class
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize height,width;
@synthesize name;

-(void) print {
    printf("Rectangle %c - w:%i h:%i area:%i perimeter:%i\n",name,width,height,[self area],[self perimeter]);
}

-(int) area {
    return height * width;
}

-(int) perimeter {
    return 2 * height + 2 * width;
}

-(void) setWidth:(int) w andHeight:(int)h
{
    width = w;
    height = h;
}

@end