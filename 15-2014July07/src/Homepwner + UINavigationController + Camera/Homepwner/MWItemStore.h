//
//  MWItemStore.h
//  Homepwner
//
//  Created by metodowhite on 09/06/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MPAItem;

@interface MWItemStore : NSObject

@property (nonatomic, readonly) NSArray *allItems;

+ (instancetype)sharedStore;
- (MPAItem *)createItem;
- (void)removeItem:(MPAItem *)item;

- (void)moveItemAtIndexPath:(NSUInteger)fromIndex
                    toIndex:(NSUInteger)toIndex;

@end
