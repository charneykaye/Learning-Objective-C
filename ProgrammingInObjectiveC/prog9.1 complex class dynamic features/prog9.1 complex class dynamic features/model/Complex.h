//
//  Complex.h
//  prog9.1 complex class dynamic features
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void) scan;
-(void) print;
-(void) setReal: (double) a andImaginary: (double) b;
-(Complex *) add: (Complex *) f;

@end
