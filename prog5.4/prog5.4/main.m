//
//  main.m
//  prog5.4
//
//  Created by Nick Kaye on 4/10/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int triangularNumber, number;
        
        while (number >= 0) {
        
            printf("Calculate what triangular number? ");
            scanf("%i",&number);
            
            if ( number>0 ) {

                triangularNumber = 0;
                for ( int n=1; n<=number; n++ )
                    triangularNumber += n;
                
                
                NSLog(@"Triangular number %i is %i\n", number, triangularNumber);

            } else number = -1;
            
        }
        
    }
    return 0;
}

