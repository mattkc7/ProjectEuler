//
//  TheGrid.m
//  PE11
//
//  Created by Matthew on 7/21/13.
//  Copyright (c) 2013 Matthew. All rights reserved.
//

#import "TheGrid.h"

@implementation TheGrid

-(void)beginSearchForProduct
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"PE11_data"
                                                         ofType:@"txt"];
    NSLog(@"file path is %@", filePath);
    for (NSString *line in [filePath componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]]) {
        NSLog(@".. %@", line);
    }
}

@end
