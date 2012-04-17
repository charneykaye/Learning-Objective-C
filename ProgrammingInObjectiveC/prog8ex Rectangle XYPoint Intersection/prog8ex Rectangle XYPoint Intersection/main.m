//
//  main.m
//  prog8ex Rectangle XYPoint Intersection
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Triangle.h"
#import "Rectangle.h"
#import "Circle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        XYPoint * A = [XYPoint new];
        XYPoint * B = [XYPoint new];
        XYPoint * C = [XYPoint new];

        printf("Enter an X,Y coordinate: ");
        [A scan];
        printf("Enter a second X,Y coordinate: ");
        [B scan];
        printf("Enter a third X,Y coordinate: ");
        [C scan];
        
        Triangle * tri = [Triangle new];
        [tri setA:A andB:B andC:C];
        [tri print];
        
    }
    return 0;
}

