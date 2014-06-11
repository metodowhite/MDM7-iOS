//
//  MPAItem.m
//  RandomItems
//
//  Created by metodowhite on 14/05/14.
//  Copyright (c) 2014 elkraneoteach. All rights reserved.
//

#import "MPAItem.h"

@implementation MPAItem

- (void)setItemName:(NSString *)str {
    _itemName = str;
}

- (NSString *)itemName {
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str {
    _serialNumber = str;
}
- (NSString *)serialNumber {
    return _serialNumber;
}

- (void)setValueInEuro:(int)v {
    _valueInEuro = v;
}
- (int)valueInEuro {
    return _valueInEuro;
}

- (NSDate *)dateCreated {
    return _dateCreated;
}


@end









