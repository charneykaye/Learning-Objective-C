//
//  ClassA.h
//  prog8.0
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject
{
    int x; // will be inherited by subclasses
}

-(void) initVar;
-(void) printVar;

@end
