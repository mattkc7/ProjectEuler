//
//  PrimeNum.m
//  PE7
//
//  Created by Matthew on 7/13/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import "PrimeNum.h"

@implementation PrimeNum

-(BOOL)isPrime:(long)num
{
    long limit = num / 2;
    for (long i = 2; i < limit; i++) {
        if ((num % i) == 0) {
            return NO;
        }
    }
    
    return YES;
}

-(long)getNextPrimeAfter:(long)num
{
    long potentialprime = num + 1;
    
    while (YES) {
        if ([self isPrime:potentialprime]) {
            return potentialprime;
        }
        
        potentialprime++;
    }
}

-(long)getTenThousandthAndFirstPrime
{
    int primeCount = 1;
    long currPrime = 2;
    
    for (; primeCount <= 10001; primeCount++) {
        currPrime = [self getNextPrimeAfter:currPrime];
    }
    
    return currPrime;
}
@end
