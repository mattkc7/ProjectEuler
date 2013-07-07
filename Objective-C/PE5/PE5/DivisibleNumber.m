//
//  DivisibleNumber.m
//  PE5
//
//  Created by Matthew on 7/7/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import "DivisibleNumber.h"

@implementation DivisibleNumber


-(BOOL) divisibleByOneToTwenty:(int)num
{
    for (int i = 1; i < 21; i++) {
        if ((num % i) != 0) {
            return NO;
        }
    }
    
    return YES;
}


-(void)findSmallestNumberDivisibleByRange
{
    BOOL keepSearching = YES;
    int num = 40;
    while (keepSearching) {
        if ([self divisibleByOneToTwenty:num]) {
            NSLog(@"The smallest positive number divisible by 1 to 20 is %d", num);
            keepSearching = NO;
        }
        num++;
    }
    
}

@end
