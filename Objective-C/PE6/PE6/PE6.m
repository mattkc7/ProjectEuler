//
//  PE6.m
//  PE6
//
//  Created by Matthew on 7/10/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import "PE6.h"
#include <math.h>

@implementation PE6

-(int)sumOfSquares
{
    int sum = 0;
    for (int i = 1; i < 101; i++) {
        sum += (i * i);
    }
    
    return sum;
}

-(int)squareOfSums
{
    int sum = (100*101) / 2;
    return sum*sum;
}

-(int)differenceBtwnTheTwoNumbers
{
    int a = [self sumOfSquares];
    int b = [self squareOfSums];
    
    return abs(a-b);
}
@end
