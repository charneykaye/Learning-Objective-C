//
//  main.m
//  prog5-ex3
//
//  Created by Nick Kaye on 4/10/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        int max;
        int fact=0;
        
        printf("Generate until factorial:\n");
        scanf("%i",&max);
        
        printf(" n      factorial\n");
        printf("-----  ------------\n");
        
        for ( int n=1; n<=max; n++ )
            printf(" %-3i    %-9i\n",n,(fact += n));
        
        
    }
    return 0;
}

