//
//  MyPrimeObjects.m
//  PE3
//
//  Created by Matthew on 6/30/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import "MyPrimeObjects.h"

@implementation MyPrimeObjects
@synthesize factoredPrimes;

-(BOOL) isPrime:(int)num
{
    for (int i = 2; i <= (num / 2); i++) {
        if ((num % i) == 0) {
            return NO;
        }
    }
    
    return YES;
}


-(int)getNextPrimeAfter:(int)num
{
    int potentialPrime = num + 1;
    
    while (YES)
    {
        if ([self isPrime:potentialPrime]) {
            return potentialPrime;
        }
        
        potentialPrime++;
    }
}

-(int)largestPrimeFactorOf:(unsigned long)num
{
    self.factoredPrimes = [[NSMutableArray alloc] init];
    int currPrime = 2;
    
    while (num > 1) {
        if ((num % currPrime) == 0) {
            num = num / currPrime;
            [self.factoredPrimes addObject:[NSNumber numberWithInt:currPrime]];
        }
        
        currPrime = [self getNextPrimeAfter:currPrime];
    }
    
    return [[self.factoredPrimes lastObject] intValue];
}

@end
