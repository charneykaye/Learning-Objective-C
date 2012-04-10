//
//  main.m
//  prog4.4
//
//  Created by Nick Kaye on 4/7/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface NiceTime: NSObject
-(void) setTotalSeconds: (int) s;
-(void) setName: (char) n;
-(void) print;
-(char) name;
-(int) totalSeconds;
-(int) totalMinutes;
-(int) totalHours;
-(int) totalDays;
-(int) totalWeeks;
-(int) incSeconds;
-(int) incMinutes;
-(int) incHours;
-(int) incDays;
-(int) incWeeks;
@end

//---- @implementation section ----

@implementation NiceTime
{
    char name;
    int totalSeconds;
    int totalMinutes;
    int totalHours;
    int totalDays;
    int totalWeeks;
    int incSeconds;    
    int incMinutes;
    int incHours;
    int incDays;
    int incWeeks;
}

-(void) setTotalSeconds: (int) s
{
//    NSLog(@"NiceTime %c setTotalSeconds %i",name,s);
    
    // constants
    int secondsPerMinute = 60;
    int minutesPerHour = 60;
    int hoursPerDay = 24;
    int daysPerWeek = 7;
    
    // start with any number of seconds
    totalSeconds = s;
    
    // determine total minutes + seconds leftover
    totalMinutes = totalSeconds / secondsPerMinute;
    incSeconds = totalSeconds % secondsPerMinute;
    
    // determine total hours + minutes leftover
    totalHours = totalMinutes / minutesPerHour;
    incMinutes = totalMinutes % minutesPerHour;

    // determine total days + hours leftover
    totalDays = totalHours / hoursPerDay;
    incHours = totalHours % hoursPerDay;

    // determine total weeks + days leftover
    totalWeeks = totalDays / daysPerWeek;
    incDays = totalDays % daysPerWeek;
    
}

-(void) print
{
    NSLog(@"NiceTime %c says a %i Seconds = %i Weeks, %i Days, %i Hours, %i Minutes, %i Seconds", name, totalSeconds, totalWeeks, incDays, incHours, incMinutes, incSeconds);
}

-(void) setName:(char) n
{
    name = n;
}

-(char) name
{
    return name;
}

-(int) totalSeconds
{
    return totalSeconds;
}

-(int) totalMinutes
{
    return totalMinutes;
}

-(int) totalHours
{
    return totalHours;
}

-(int) totalDays
{
    return totalDays;
}

-(int) totalWeeks
{
    return totalWeeks;
}

-(int) incSeconds
{
    return incSeconds;
}

-(int) incMinutes
{
    return incMinutes;
}

-(int) incHours
{
    return incHours;
}

-(int) incDays
{
    return incDays;
}

-(int) incWeeks
{
    return incWeeks;
}

@end

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {

        /*
         Create instances of NiceTime,
         using three different syntaxes
         with identical effect
         */
        // One
        NiceTime *timeOne;
        timeOne = [NiceTime alloc];
        timeOne = [timeOne init];
        // Two
        NiceTime *timeTwo = [[NiceTime alloc] init];
        // Three
        NiceTime *timeThree = [NiceTime new];
        
        //set NiceTime one to 1/3
        [timeOne setName: 'A'];
        [timeOne setTotalSeconds: 1151];
        
        //set NiceTime two to 3/5
        [timeTwo setName: 'B'];
        [timeTwo setTotalSeconds: 32321];
        
        //set NiceTime three to 4/7
        [timeThree setName: 'C'];
        [timeThree setTotalSeconds: 2000592];
        
        //display the NiceTime using the print method
        [timeOne print];        
        [timeTwo print];
        [timeThree print];
    }
    return 0;
}

