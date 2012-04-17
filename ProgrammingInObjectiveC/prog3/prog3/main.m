//
//  main.m
//  prog3
//
//  Created by Nick Kaye on 4/7/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject
    -(void) setX: (float) x;
    -(void) setY: (float) y;
    -(float) X;
    -(float) Y;
@end

@implementation XYPoint
{
    float X;
    float Y;
}
-(void) setX: (float) x
{
    X = x;
}
-(void) setY: (float) y
{
    Y = y;
}
-(float) X
{
    return X;
}
-(float) Y
{
    return Y;
}
@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        XYPoint *target = [XYPoint new];        
        [target setX: 0.54];
        [target setY: 1.7];
        NSLog(@"My point is located at %f,%f",[target X],[target Y]);
    }
    return 0;
}

