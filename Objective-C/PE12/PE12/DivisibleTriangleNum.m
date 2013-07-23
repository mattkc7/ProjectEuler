//
//  DivisibleTriangleNum.m
//  PE12
//
//  Created by Matthew on 7/21/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import "DivisibleTriangleNum.h"
#include "math.h"

@implementation DivisibleTriangleNum

-(void)findTriangleNumberWithFiveHundredDivisors
{
    BOOL searchState = YES;
    int triangleIncrement = 1;
    int triangleNum = 1;
    
    int factorsCount = 0;
    int i = 0;

    while (searchState) {
    //while (i < 10) {
        i++;
        triangleIncrement++;
        
        triangleNum += triangleIncrement;
        factorsCount = [self findNumbersThatFactorInto:triangleNum];
        
        //NSLog(@"%d: %d", triangleNum, factorsCount);
        if (factorsCount > 500) {
            NSLog(@"Triangle Number with over 500 divisors is %d", triangleNum);
            searchState = NO;
        }
    }
        
}

-(int)findNumbersThatFactorInto:(int)target
{
    int count = 0;
    for (int i = 1; i < sqrt(target); i++) {
        if (target % i == 0) {
            count += 2;
        }
    }
    return count;
}
@end
