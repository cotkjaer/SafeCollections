//
//  NSArray+Safe.m
//  Silverback
//
//  Created by Christian Otkjær on 11/8/13.
//  Copyright (c) 2013 Silverback IT. All rights reserved.
//

#import "NSArray+Safe.h"

@implementation NSArray (Safe)

- (id)objectAtIndexSafely:(NSUInteger)index
{
    return index < [self count] ? [self objectAtIndex:index]: nil;
}

- (BOOL)containsObjectSafely:(id)object
{
    BOOL contains = NO;
    
    if (object != nil)
    {
        contains = [self containsObject:object];
    }
    
    return contains;
}

@end

@implementation NSMutableArray (Safe)

- (void)addObjectSafely:(id)object
{
    if (object != nil)
    {
        [self addObject:object];
    }
}

- (void)removeObjectSafely:(id)object
{
    if (object != nil)
    {
        [self removeObject:object];
    }
}

- (void)addObjectsFromArraySafely:(NSArray *)array
{
    if ([array count] > 0)
    {
        [self addObjectsFromArray:array];
    }
}

@end