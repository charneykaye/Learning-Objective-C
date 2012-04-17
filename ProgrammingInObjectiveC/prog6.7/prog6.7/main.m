//
//  main.m
//  prog6.7
//
//  Created by Nick Kaye on 4/11/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        char c;

        while (true) {
        printf("Type in a single character:");
        scanf("%c",&c);

        // lowercase letter
        if (c>='a' && c<='z')
            printf("It's a lowercase letter.\n");
        
        // uppercase letter
        else if (c >= 'A' && c <= 'Z')
            printf("It's an uppercase letter.\n");
                
        // number
        else if (c >= '0' && c<= '9')
            printf("It's a number.\n");
                
        // something else
        else
            break;
        
        // if we're going to continue, clear line buffer
        while( getchar() != '\n' ) {/*flush line buffer*/} ;        
            
        }
        
    }
    return 0;
}

