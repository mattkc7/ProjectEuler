//
//  main.m
//  PE5
//
//  Created by Matthew on 7/7/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DivisibleNumber.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
         
         2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
         
         What is the smallest positive number that is evenly divisible by all of the 
            numbers from 1 to 20?
         
         */
        
        DivisibleNumber *divisibleNum = [[DivisibleNumber alloc] init];
        
        NSTimeInterval start = [[NSDate date] timeIntervalSinceReferenceDate];
        [divisibleNum findSmallestNumberDivisibleByRange]; //ans: 232792560
        NSTimeInterval end = [[NSDate date] timeIntervalSinceReferenceDate];
        
        NSLog(@"Elapsed Time: %f", (end-start));
        
        
    }
    return 0;
}

