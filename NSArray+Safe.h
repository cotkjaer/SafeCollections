//
//  NSArray+Safe.h
//  Silverback
//
//  Created by Christian Otkjær on 11/8/13.
//  Copyright (c) 2013 Silverback IT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Safe)

- (id)objectAtIndexSafely:(NSUInteger)index;

- (BOOL)containsObjectSafely:(id)anObject;

@end

@interface NSMutableArray (Safe)

- (void)addObjectSafely:(id)object;

- (void)removeObjectSafely:(id)object;

- (void)addObjectsFromArraySafely:(NSArray *)array;

@end