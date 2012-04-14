//
//  main.m
//  prog8.2 rectangle class
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Rectangle.h"
#import "Square.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // instantiate Rectangle One; set properties
        Rectangle * rectOne = [Rectangle new];
        [rectOne setName:'A'];
        [rectOne setWidth:5 andHeight:12];
        
        // instantiate Rectangle Two; set properties
        Rectangle * rectTwo = [Rectangle new];
        [rectTwo setName:'B'];
        [rectTwo setWidth:79];
        [rectTwo setHeight:915];

        // instantiate Square One; set properties
        Square * squareOne = [Square new];
        [squareOne setName:'B'];
        [squareOne setSide:48];

        // log rectangles
        [rectOne print];
        [rectTwo print];
        [squareOne print];
        
    }
    return 0;
}

