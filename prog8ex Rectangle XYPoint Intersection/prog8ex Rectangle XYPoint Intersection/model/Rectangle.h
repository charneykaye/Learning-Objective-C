//
//  Rectangle.h
//  prog8.2 rectangle class
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "GraphicObject.h"

@interface Rectangle: GraphicObject

@property float width, height;
@property char name;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (float) w andHeight: (float) h;
-(float) area;
-(float) perimeter;
-(void) print;
-(BOOL) containsPoint: (XYPoint *) pt;

@end