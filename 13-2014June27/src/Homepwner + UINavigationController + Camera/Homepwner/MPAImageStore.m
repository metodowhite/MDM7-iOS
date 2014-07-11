//
//  MPAImageStore.m
//  Homepwner
//
//  Created by metodowhite on 25/06/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

#import "MPAImageStore.h"
@interface MPAImageStore()
@property (nonatomic, strong) NSMutableDictionary *dictionary;
@end

@implementation MPAImageStore

+ (instancetype)sharedStore {
    static MPAImageStore *sharedStore = nil;
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}

- (instancetype)init {
    @throw [NSException exceptionWithName:@"Singleton"
                                   reason:@"Use +[MPAImageStore sharedStore]"
                                 userInfo:nil];
}

- (instancetype)initPrivate
{
    self = [super init];
    if (self) {
        _dictionary = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void)setImage:(UIImage *)image forKey:(NSString *)key {
//    [self.dictionary setObject:image forKey:key];
    self.dictionary[key] = image;
}

- (UIImage *)imageForKey:(NSString *)key {
//    return [self.dictionary objectForKey:key];
    return self.dictionary[key];
}

- (void)deleteImageForKey:(NSString *)key {
    if (!key) {
        return;
    }
    [self.dictionary removeObjectForKey:key];
}

@end



















