//
//  NSArray+_0RFilter.m
//  00RCategorys
//
//  Created by Lorin on 27/11/2017.
//  Copyright © 2017 Lorin. All rights reserved.
//

#import "NSArray+_0RFilter.h"


@implementation NSArray (_0RFilter)
- (NSArray *)r00_map:(R00_MapBlock)mapBlock {
    __block NSMutableArray *targetArray = [NSMutableArray arrayWithCapacity:self.count];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        id targetObj = mapBlock(obj,idx);
        if (targetObj) {
            [targetArray addObject:targetObj];
        }
    }];
    return [targetArray copy];
}
@end
