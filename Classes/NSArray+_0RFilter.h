//
//  NSArray+_0RFilter.h
//  00RCategorys
//
//  Created by Lorin on 27/11/2017.
//  Copyright © 2017 Lorin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//


@interface NSArray (_0RFilter)
typedef id _Nullable (^R00_MapBlock)(id _Nonnull obj,NSUInteger index);
- (NSArray *)r00_map:(R00_MapBlock)mapBlock;
@end
NS_ASSUME_NONNULL_END


