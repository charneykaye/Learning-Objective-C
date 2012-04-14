//
//  Circle.h
//  prog8ex Rectangle XYPoint Intersection
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "GraphicObject.h"

@class XYPoint;

@interface Circle: GraphicObject

@property float radius;
@property char name;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(float) diameter;
-(float) area;
-(float) circumference;
-(void) print;

@end