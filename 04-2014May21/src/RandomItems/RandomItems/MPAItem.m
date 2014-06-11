//
//  MPAItem.m
//  RandomItems
//
//  Created by metodowhite on 14/05/14.
//  Copyright (c) 2014 elkraneoteach. All rights reserved.
//

#import "MPAItem.h"

@implementation MPAItem

+ (instancetype)randomItem {
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
//    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
//                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
//                            [randomNounList objectAtIndex:nounIndex]];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            randomAdjectiveList[adjectiveIndex],
                            randomNounList[nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    
    MPAItem *newItem = [[self alloc] initWithItemName:randomName
                                         valueInEuros:randomValue
                                         serialNumber:randomSerialNumber];
    
    return newItem;
}













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


//- (void)setItemName:(NSString *)str {
//    _itemName = str;
//}
//
//- (NSString *)itemName {
//    return _itemName;
//}
//
//- (void)setSerialNumber:(NSString *)str {
//    _serialNumber = str;
//}
//
//- (NSString *)serialNumber {
//    return _serialNumber;
//}
//
//- (void)setValueInEuro:(int)v {
//    _valueInEuro = v;
//}
//- (int)valueInEuro {
//    return _valueInEuro;
//}
//
//- (NSDate *)dateCreated {
//    return _dateCreated;
//}


- (NSString *)description {
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): worth €%d recorded on %@",
                                   self.itemName,
                                   self.serialNumber,
                                   self.valueInEuro,
                                   self.dateCreated];
    
    
    return descriptionString;
}


@end





















