//
//  main.m
//  RandomItems
//
//  Created by metodowhite on 14/05/14.
//  Copyright (c) 2014 elkraneoteach. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MPAItem.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            MPAItem *item = [MPAItem randomItem];
            [items addObject:item];
        }
        
//        id lastObj = [items lastObject];
//        [lastObj count];
        
        for (MPAItem *item in items) {
            NSLog(@"%@", item);
        }
        
    }
    return 0;
}















