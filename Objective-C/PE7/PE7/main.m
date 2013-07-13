//
//  main.m
//  PE7
//
//  Created by Matthew on 7/13/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrimeNum.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        PrimeNum *primeNum = [[PrimeNum alloc] init];
        long ans = [primeNum getTenThousandthAndFirstPrime];
        
        NSLog(@"%lu", ans); //ans: 104743
        
    }
    return 0;
}

