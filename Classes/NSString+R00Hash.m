//
//  NSString+R00Hash.m
//  00RCategorys
//
//  Created by Lorin on 27/11/2017.
//  Copyright © 2017 Lorin. All rights reserved.
//

#import "NSString+R00Hash.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (R00Hash)
- (NSString *)r00_md5Hash {
    const char *cStr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}
@end
