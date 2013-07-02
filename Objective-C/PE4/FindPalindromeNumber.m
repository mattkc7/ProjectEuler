//
//  FindPalindromeNumber.m
//  PE4
//
//  Created by Matthew on 7/2/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import "FindPalindromeNumber.h"

@implementation FindPalindromeNumber

-(id)init
{
    self = [super init];
    
    if (self) {
        [self findLargestPalindromeProduct];
    }
    
    return self;
}

-(void)findLargestPalindromeProduct
{
    int numA = 0;
    int numB = 0;
    int maxSoFar = 0;
    
    for (int a = 999; a > 900; a--) {
        for (int b = 999; b > 900 ; b--) {
            int prod = a * b;
            if ([self isPalindrome:prod]) {
                if (prod > maxSoFar) {
                    maxSoFar = prod;
                    numA = a;
                    numB = b;
                }
            }
        }
    }
    
    NSLog(@"%d * %d = %d // the largest palindrome number", numA, numB, maxSoFar);
}

-(BOOL)isPalindrome:(int)num
{
    NSString *numStr = [NSString stringWithFormat:@"%d", num];
    NSMutableString *numStrRev = [self reverseString:numStr];
    
    if ([numStr isEqualToString:numStrRev]) {
        return YES;
    } else {
        return NO;
    }
}

-(NSMutableString *)reverseString:(NSString *)str
{
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [str length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[str substringWithRange:subStrRange]];
    }
    
    return reversedString;
}

@end
