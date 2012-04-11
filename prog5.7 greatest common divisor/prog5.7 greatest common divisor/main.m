//
//  main.m
//  prog5.7 greatest common divisor
//
//  Created by Nick Kaye on 4/10/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        unsigned int u,v, temp;
        
        printf("Please type in two nonnegative integers:\n");
        scanf("%u%u", &u, &v);

        while ( v != 0 ) {
            temp = u %v;
            u = v;
            v = temp;
        }
        
    printf("Their greatest common divisor is %u\n", u);
            
    }
    return 0;
}

