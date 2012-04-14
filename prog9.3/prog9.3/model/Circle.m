//
//  Circle.m
//  prog8ex Rectangle XYPoint Intersection
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Circle.h"

@implementation Circle

{
    XYPoint * origin;
}

@synthesize radius;
@synthesize name;

-(void) setOrigin:(XYPoint *) pt
{
    if (!origin)
        origin = [XYPoint new];
    [origin assumePropertiesOf:pt];
}

-(XYPoint *) origin
{
    return [origin clone];
}

-(float) area {
    return M_PI * radius * radius;
}

-(float) diameter {
    return radius * 2;
}

-(float) circumference {
    return M_PI * 2 * radius;
}

-(void) print {
    printf("Circle %c - origin:",name);
    [origin print];
    printf(" r:%f d:%f area:%f circumference:%f\n",radius,[self diameter],[self area],[self circumference]);
}

@end
