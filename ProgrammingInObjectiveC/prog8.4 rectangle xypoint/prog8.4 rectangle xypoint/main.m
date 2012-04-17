//
//  main.m
//  prog8.4 rectangle xypoint
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Rectangle * myRect = [Rectangle new];
        XYPoint * myPoint = [XYPoint new];
        
        [myPoint setX:100 andY:200];
        [myRect setOrigin:myPoint];
        [myRect setWidth:5 andHeight:8];
        [myRect setName:'A'];
        
        [myRect print];
        
        [myPoint setX:50 andY:75];
        
        [myRect print];
    }
    return 0;
}

