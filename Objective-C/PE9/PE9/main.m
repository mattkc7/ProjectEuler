//
//  main.m
//  PE9
//
//  Created by Matthew on 7/16/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <math.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
         
         A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
         
         a^2 + b^2 = c^2
         For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
         
         There exists exactly one Pythagorean triplet for which a + b + c = 1000.
         Find the product abc.
         
         a + b = 1000 - c
         */
        
        BOOL seen = NO;
        for (int a = 2; a < 1000; a++) {
            for (int b = 2; b < 1000; b++) {
                float aa = pow(a, 2);
                float bb = pow(b, 2);
                float cc = aa + bb;
                float c = sqrt(cc);

                if ((a+b+c) == 1000.00) {
                    if (!seen) {
                        NSLog(@"a*b*c = %.1f", a*b*c);
                        NSLog(@"a = %d, b = %d, c = %.1f", a, b, c); //ans: 31875000
                        seen = YES;
                    }
                }
            }
        }
        
    }
    return 0;
}

