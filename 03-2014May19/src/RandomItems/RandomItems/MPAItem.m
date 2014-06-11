//
//  MPAItem.m
//  RandomItems
//
//  Created by metodowhite on 14/05/14.
//  Copyright (c) 2014 elkraneoteach. All rights reserved.
//

#import "MPAItem.h"

@implementation MPAItem

- (instancetype)initWithItemName:(NSString *)name
                    valueInEuros:(int)value
                    serialNumber:(NSString *)sNumber {
    
    self = [super init];
    if (self) {
        _itemName = name;
        _valueInEuro = value;
        _serialNumber = sNumber;
        
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}

- (instancetype)initWithItemName:(NSString *)name {
    return [self initWithItemName:name
                     valueInEuros:0
                     serialNumber:@""];
}

-(instancetype)init {
    return [self initWithItemName:@"item"];
}











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


- (NSString *)description {
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): worth €%d recorded on %@",
                                   self.itemName,
                                   self.serialNumber,
                                   self.valueInEuro,
                                   self.dateCreated];
    
    
    return descriptionString;
}


@end




















