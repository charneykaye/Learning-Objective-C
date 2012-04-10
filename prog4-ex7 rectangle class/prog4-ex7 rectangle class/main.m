//
//  main.m
//  prog4-ex7 rectangle class
//
//  Created by Nick Kaye on 4/10/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Rectangle Class Interface
 */ 
@interface Rectangle: NSObject

-(void) setName: (char) n;
-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(void) log;
-(char) name;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end

/**
 * Retangle Class Implementation
 */
@implementation Rectangle
{
    char name;
    int width;
    int height;
}

-(void) setName:(char)n {
    name = n;
}

-(void) setWidth:(int)w {
    width = w;
}

-(void) setHeight:(int)h {
    height = h;
}

-(void) log {
    NSLog(@"Rectangle %c - w:%i h:%i area:%i perimeter:%i",name,width,height,[self area],[self perimeter]);
}

-(int) width {
    return width;
}

-(int) height {
    return height;
}

-(int) area {
    return height * width;
}

-(int) perimeter {
    return 2 * height + 2 * width;
}

-(char) name {
    return name;
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // instantiate Rectangle One; set properties
        Rectangle *rectOne = [Rectangle new];
        [rectOne setName:'1'];
        [rectOne setWidth:5];
        [rectOne setHeight:12];

        // instantiate Rectangle Two; set properties
        Rectangle *rectTwo = [Rectangle new];
        [rectTwo setName:'2'];
        [rectTwo setWidth:79];
        [rectTwo setHeight:915];
        
        // log rectangles
        [rectOne log];
        [rectTwo log];
        
    }
    return 0;
}

