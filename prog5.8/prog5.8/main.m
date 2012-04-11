//
//  main.m
//  prog5.8
//
//  Created by Nick Kaye on 4/10/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int number, number_rev;
        
        printf("Enter your number:\n");
        scanf("%i", &number);
        
        number_rev = 0;
        
        while (number != 0) {
            if (number_rev>0)
                number_rev *= 10;
            number_rev += number % 10;
            number /= 10;
        }
        
        printf("Reversed number is %i\n",number_rev);
        
    }
    return 0;
}

