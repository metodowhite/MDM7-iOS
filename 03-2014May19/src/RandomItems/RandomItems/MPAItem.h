//
//  MPAItem.h
//  RandomItems
//
//  Created by metodowhite on 14/05/14.
//  Copyright (c) 2014 elkraneoteach. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MPAItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInEuro;
    NSDate *_dateCreated;
}

// Designated initializer for MPAItem
- (instancetype)initWithItemName:(NSString *)name
                    valueInEuros:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;


- (void)setItemName:(NSString *)str; //setter
- (NSString *)itemName; //getter

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInEuro:(int)v;
- (int)valueInEuro;

- (NSDate *)dateCreated;




@end





















