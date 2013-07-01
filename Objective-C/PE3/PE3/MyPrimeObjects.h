//
//  MyPrimeObjects.h
//  PE3
//
//  Created by Matthew on 6/30/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyPrimeObjects : NSObject
{
    NSMutableArray *factoredPrimes;
}

@property(nonatomic, retain) NSMutableArray *factoredPrimes;

-(BOOL) isPrime:(int)num;
-(int)getNextPrimeAfter:(int)num;
-(int)largestPrimeFactorOf:(unsigned long)num;
@end
