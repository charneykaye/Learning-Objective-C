//
//  XYPoint.h
//  prog8.4 rectangle xypoint
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject

@property int x,y;
-(void) setX: (int) sX andY: (int) sY;
-(void) print;
-(void) assumePropertiesOf: (XYPoint *) pt;
-(XYPoint *) clone;

@end
