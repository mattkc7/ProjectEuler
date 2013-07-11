//
//  main.m
//  PE6
//
//  Created by Matthew on 7/10/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PE6.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
         
         The sum of the squares of the first ten natural numbers is,
         
         1^2 + 2^2 + ... + 10^2 = 385
         The square of the sum of the first ten natural numbers is,
         
         (1 + 2 + ... + 10)^2 = 552 = 3025
         Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.
         
         Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
         
         */
        
        PE6 *projE = [[PE6 alloc] init];
        int theAnswerYouAreSeeking = [projE differenceBtwnTheTwoNumbers];
        NSLog(@"ans: %d", theAnswerYouAreSeeking);
        
    }
    return 0;
}

