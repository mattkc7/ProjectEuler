//
//  main.m
//  PE11
//
//  Created by Matthew on 7/21/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TheGrid.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
         
         In the 20 x 20 grid below, four numbers along a diagonal line have been marked in red.
         
         The product of these numbers is 26 * 63 * 78 * 14 = 1,788,696.
         
         What is the greatest product of four adjacent numbers in the same
         direction (up, down, left, right, or diagonally) in the 20 x 20 grid?
         
         */
        
        TheGrid *myGrid = [[TheGrid alloc] init];
        [myGrid beginSearchForProduct];
        
    }
    return 0;
}

