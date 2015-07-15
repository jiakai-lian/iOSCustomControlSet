//
//  NSArray+BlockFilter.h
//  Pods
//
//  Created by jiakai lian on 14/07/2015.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface NSArray (BlockFilter)

- (instancetype)filter:(BOOL(^)(id elt))filterBlock;

@end
NS_ASSUME_NONNULL_END
