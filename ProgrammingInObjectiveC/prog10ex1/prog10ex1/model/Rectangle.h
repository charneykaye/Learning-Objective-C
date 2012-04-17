//
//  Rectangle.h
//  prog8.2 rectangle class
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle: NSObject

@property int width, height;
@property char name;

-(id) initWithWidth: (int) w andHeight: (int) h;
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (int) w andHeight: (int) h;
-(int) area;
-(int) perimeter;
-(void) print;

@end