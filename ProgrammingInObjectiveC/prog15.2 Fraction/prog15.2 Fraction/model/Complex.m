//
//  Complex.m
//  prog9.1 complex class dynamic features
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Complex.h"
#import "global.h"

@implementation Complex

@synthesize real, imaginary;

static int count;

-(void) print
{
    printf("%g+%gi", real, imaginary);
}

-(void) scan
{
    double a,b;
    count++;
    printf("enter imaginary number %i as #+#:\n",count);
    scanf("%g+%g",&a,&b);
    [self setReal:a andImaginary:b];
    printf("\n");
}

-(void) setReal: (double) a andImaginary: (double) b
{
    real = a;
    imaginary = b;
}

-(Complex *) add: (Complex *) f
{
    // perform function
    Complex * result = [Complex new];    
    result.real = real + f.real;
    result.imaginary = imaginary + f.imaginary;
    // print
    [self print];
    printf(" plus ");
    [f print];
    printf(" = ");
    [result print];
    printf("\n\n");
    // output
    return result;
}

@end
