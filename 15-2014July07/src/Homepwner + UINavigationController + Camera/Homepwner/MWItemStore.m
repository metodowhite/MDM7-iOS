//
//  MWItemStore.m
//  Homepwner
//
//  Created by metodowhite on 09/06/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "MWItemStore.h"
#import "MPAItem.h"
#import "MPAImageStore.h"

@interface MWItemStore()
@property (nonatomic) NSMutableArray *privateItems;
@end

@implementation MWItemStore

+ (instancetype)sharedStore {
    static MWItemStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    
    return sharedStore;
}

- (instancetype)init {
    @throw [NSException exceptionWithName:@"Singleton"
                                   reason:@"Use +[MWItemStore sharedStore]"
                                 userInfo:nil];
    
    return nil;
}



- (instancetype)initPrivate {
    self = [super init];
    if (self) {
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)allItems {
    return self.privateItems;
}

- (MPAItem *)createItem {
    MPAItem *item = [MPAItem randomItem];
    [self.privateItems addObject:item];
    
    return item;
}

- (void)removeItem:(MPAItem *)item {
    NSString *key = item.itemKey;
    [[MPAImageStore sharedStore] deleteImageForKey:key];
    [self.privateItems removeObjectIdenticalTo:item];
}

- (void)moveItemAtIndexPath:(NSUInteger)fromIndex
                    toIndex:(NSUInteger)toIndex {
    
    if (fromIndex == toIndex) {
        return;
    }
    
    MPAItem *item = self.privateItems[fromIndex];
    [self.privateItems removeObjectAtIndex:fromIndex];
    [self.privateItems insertObject:item atIndex:toIndex];
}

@end




















