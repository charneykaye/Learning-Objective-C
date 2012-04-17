//
//  Triangle.h
//  prog8ex Rectangle XYPoint Intersection
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "GraphicObject.h"

@interface Triangle: GraphicObject

@property char name;

-(XYPoint *) pointA;
-(XYPoint *) pointB;
-(XYPoint *) pointC;
-(void) setA:(XYPoint *) A andB:(XYPoint *) B andC:(XYPoint *) C;
-(void) setPointA: (XYPoint *) pt;
-(void) setPointB: (XYPoint *) pt;
-(void) setPointC: (XYPoint *) pt;
-(float) area;
-(float) perimeter;
-(void) print;

@end