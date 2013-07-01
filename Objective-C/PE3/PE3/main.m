//
//  main.m
//  PE3
//
//  Created by Matthew on 6/30/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyPrimeObjects.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
             The prime factors of 13195 are 5, 7, 13 and 29.
             
             What is the largest prime factor of the number 600851475143 ?
         */
        
        unsigned long target = 600851475143;
        
        MyPrimeObjects *p = [[MyPrimeObjects alloc] init];
        int largestPrimeFactor = [p largestPrimeFactorOf:target];
        
        NSLog(@"Largest prime factor of %ld is %d", target, largestPrimeFactor);
        
    }
    return 0;
}

