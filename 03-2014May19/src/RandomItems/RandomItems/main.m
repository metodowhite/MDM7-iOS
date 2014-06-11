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
        
        
//        MPAItem *item = [[MPAItem alloc] init];
        
//        [item setItemName:@"Red Sofa"];
//        [item setSerialNumber:@"A1B2C"];
//        [item setValueInEuro:100];
        
//        item.itemName = @"Red Sofa";
//        item.serialNumber = @"A1B2C";
//        item.valueInEuro = 100;
        
        MPAItem *item = [[MPAItem alloc] initWithItemName:@"Red Sofa"
                                             valueInEuros:100
                                             serialNumber:@"A1B2C"];
//        NSLog(@"%@ %@ %@ %d",
//              [item itemName],
//              [item dateCreated],
//              [item serialNumber],
//              [item valueInEuro]);
        
        NSLog(@"%@", item);
        
    }
    return 0;
}















