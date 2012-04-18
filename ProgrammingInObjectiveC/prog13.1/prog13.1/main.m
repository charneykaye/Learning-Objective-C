//
//  main.m
//  prog13.1
//
//  Created by Nick Kaye on 4/17/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#define logDev(...) NSLog(__VA_ARGS__)

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    
    @autoreleasepool {
        
        int fib[15],i;
        
        fib[0] = 0;
        fib[1] = 1;
        
        for ( i=2; i<15; ++i )
            fib[i] = fib[i-2] + fib[i-1];

        for ( i=0; i<15; ++i )
            logDev(@"fib %i is %i",i+1,fib[i]);
        
        char word[] = { 'h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd' , '!', '\0'};
        logDev(@"%s", word);
        
        struct date {
            int year;
            int month;
            int day;
        };
        
        struct person {
            char * name;
            struct date bday;
        };
        
        struct person nick;
        nick.name = "Nick";
        nick.bday.year = 1983;
        nick.bday.month = 4;
        nick.bday.day = 19;

        struct person jal;
        jal.name = "Nick";
        jal.bday.year = 1991;
        jal.bday.month = 4;
        jal.bday.day = 30;
        
        struct person people[5];
        people[0] = nick;
        people[1] = jal;
        
#define logPerson(x) logDev(@"person %i named %s born %i-%i-%i",x,people[x].name,people[x].bday.year,people[x].bday.month,people[x].bday.day)
        logPerson(0);
        logPerson(1);
        
        int count;
        int * countPtr;
        count = 5;
        countPtr = &count;
        logDev(@"count is %i, countPtr is %i",count,*countPtr);
        count = 10;
        logDev(@"count is %i, countPtr is %i",count,*countPtr);
    }
    return 0;
}

