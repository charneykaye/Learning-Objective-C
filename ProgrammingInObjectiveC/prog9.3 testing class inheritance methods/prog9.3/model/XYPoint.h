//
//  XYPoint.h
//  prog8.4 rectangle xypoint
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject

@property float x,y;
-(void) setX: (float) sX andY: (float) sY;
-(void) print;
-(void) scan;
-(void) assumePropertiesOf: (XYPoint *) pt;
-(float) distanceTo: (XYPoint *) pt;
-(XYPoint *) clone;

@end
