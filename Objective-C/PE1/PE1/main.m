//
//  main.m
//  PE1
//
//  Created by Matthew on 6/30/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
         If we list all the natural numbers below 10 that are multiples of 3 or 5, 
         we get 3, 5, 6 and 9. The sum of these multiples is 23.
         
         Find the sum of all the multiples of 3 or 5 below 1000.
         */
    
        int sumSoFar = 0;
        int i = 1;
        
        while (i < 1000) {
            BOOL divisibleByThree = ((i % 3) == 0);
            BOOL divisibleByFive = ((i % 5) == 0);
            
            if (divisibleByThree || divisibleByFive) {
                sumSoFar += i;
            }
            
            i++;
        }
        
        NSLog(@"Sum of all the multiples of 3 or 5 below 1000: %d", sumSoFar);
    
    
    
    }
    return 0;
}

