//
//  main.m
//  PE8
//
//  Created by Matthew on 7/16/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GreatestProductNum.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
         
         Find the greatest product of five consecutive digits in the 1000-digit number.
         
         */
        
        NSDate *start = [NSDate date];
        
        GreatestProductNum *greatestProdNum = [[GreatestProductNum alloc] init];
        int target = [greatestProdNum greatestProductFromBigNum];
        NSDate *end = [NSDate date];
        NSTimeInterval timeDifference = [end timeIntervalSinceDate:start];
        
        //ans: 40824
        NSLog(@"The number you are looking for is %d. Found in %.3f seconds", target, timeDifference);
    }
    return 0;
}

