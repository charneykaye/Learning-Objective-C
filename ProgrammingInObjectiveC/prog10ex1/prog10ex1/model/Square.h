//
//  Square.h
//  prog8.2 rectangle class
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Rectangle.h"

@interface Square : Rectangle

-(id) initWidthSide: (int) s;
-(void) setSide: (int) s;
-(int) side;

@end
