//
//  Rectangle.h
//  prog8.2 rectangle class
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle: NSObject

@property int width, height;
@property char name;

-(void) print;
-(int) area;
-(int) perimeter;
-(void) setWidth:(int) w andHeight:(int)h;

@end