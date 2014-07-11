//
//  MPAImageStore.h
//  Homepwner
//
//  Created by metodowhite on 25/06/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MPAImageStore : NSObject

+ (instancetype)sharedStore;

- (void)setImage:(UIImage *)image forKey:(NSString *)key;
- (UIImage *)imageForKey:(NSString *)key;
- (void)deleteImageForKey:(NSString *)key;

@end
