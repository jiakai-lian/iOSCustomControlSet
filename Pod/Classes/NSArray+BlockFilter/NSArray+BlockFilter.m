//
//  NSArray+BlockFilter.m
//  Pods
//
//  Created by jiakai lian on 14/07/2015.
//
//

#import "NSArray+BlockFilter.h"

@implementation NSArray (BlockFilter)
- (instancetype)filter:(BOOL(^)(id elt))filterBlock {
    if(!filterBlock)
    {
        return self.mutableCopy;
    }
    
    // Create a new array
    NSMutableArray * filteredArray = [NSMutableArray array];
    // Collect elements matching the block condition
    for (id elt in self)
    {
        if (filterBlock(elt)) {
            [filteredArray addObject:elt];
        }
    }
    return	filteredArray;
}

@end
