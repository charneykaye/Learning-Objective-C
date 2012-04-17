//
//  main.m
//  prog10.3
//
//  Created by Nick Kaye on 4/16/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum { january = 1, february, march, april, may, june, july, august, september , october, november, december } Month;

int daysOfMonth(int amonth)
{
    switch (amonth) {
        case january:
        case march:
        case may:
        case july:
        case august:
        case october:
        case december:
            return 31;
            break;
        case april:
        case june:
        case september:
        case november:
            return 31;
            break;
        case february:
            return 28;
        default:
            NSLog(@"bad month number");
            return 0;
            break;
    }    
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Month amonth;
        
        NSLog(@"Enter a month number: ");
        scanf ("%i", &amonth);
        
        int days = daysOfMonth(amonth);
        
        if (days)
            NSLog(@"Number of days is %i",days);
                
    }
    return 0;
}