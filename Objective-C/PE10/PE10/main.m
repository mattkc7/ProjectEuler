//
//  main.m
//  PE10
//
//  Created by Matthew on 7/20/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SumOfPrimesUnderTwoMillion.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
         * The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
         * Find the sum of all the primes below two million.
         */
        NSDate *start = [NSDate date];

        SumOfPrimesUnderTwoMillion *operator = [[SumOfPrimesUnderTwoMillion alloc] init];
        [operator beginCalculations];
        
        NSDate *end = [NSDate date];
        NSTimeInterval timeDifference = [end timeIntervalSinceDate:start];
        
        NSLog(@"Completed in %.3f seconds", timeDifference);
    }
    return 0;
}

