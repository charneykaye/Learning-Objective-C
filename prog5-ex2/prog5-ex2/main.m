//
//  main.m
//  prog5-ex2
//
//  Created by Nick Kaye on 4/10/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        int begin, inc, max;
        
        printf("Begin generating number n:\n");
        scanf("%i",&begin);

        printf("Generate every nth number:\n");
        scanf("%i",&inc);

        printf("Generate until number:\n");
        scanf("%i",&max);
        
        printf("   n    triangular\n");
        printf("-----  ------------\n");
        
        for ( int n=begin; n<=max; n+=inc )
            printf(" %3i  %9i\n",n,(n*(n+1)/2));
        
        
        
    }
    return 0;
}

