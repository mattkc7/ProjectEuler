//
//  SumOfPrimesUnderTwoMillion.m
//  PE10
//
//  Created by Matthew on 7/20/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import "SumOfPrimesUnderTwoMillion.h"

@implementation SumOfPrimesUnderTwoMillion


-(void)beginCalculations
{
    int capacity = 2000000;
    NSMutableArray *primesRange = [[NSMutableArray alloc] initWithCapacity:capacity];
    
    int i = 0;
    for (i = 0; i < capacity; i++) {
        [primesRange addObject:[NSNumber numberWithInt:1]];
    }
    
    primesRange[0] = [NSNumber numberWithInt:0];
    primesRange[1] = [NSNumber numberWithInt:0];
    primesRange[capacity] = [NSNumber numberWithInt:0];
    
    int currPrime = 2;
    
    
    while ((currPrime * currPrime) < capacity) {
        int k = 2;
        while ((currPrime*k) < capacity) {
            primesRange[currPrime*k] = [NSNumber numberWithInt:0];
            k++;
        }
        
        currPrime++;
    }
    
    long sum = 0;
    for (int i = 0; i < capacity; i++) {
        if (primesRange[i] == [NSNumber numberWithInt:1]) {
            sum += i;
        }
    }
    
    NSLog(@"Sum of all primes less than 2,000,000 is %ld", sum);
    //142913828922


}
@end
