//
//  NSError+ZH.m
//  ZH
//
//  Created by Zakk Hoyt on 4/27/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import "NSError+ZH.h"

@implementation NSError (ZH)
+ (NSError *)error {
    return [NSError errorWithCode:NSErrorCodeGeneral];
}
+ (NSError *)errorWithCode:(NSErrorCode)code {
    return [NSError errorWithCode:code userInfo:nil];
}
+ (NSError *)errorWithCode:(NSErrorCode)code userInfo:(NSDictionary *)userInfo {
    return [NSError errorWithDomain:NSErrorZHDomain code:code userInfo:userInfo];
}
+ (NSError *)errorWithCode:(NSErrorCode)code localizedFailureReason:(NSString *)localizedFailureReason {
    return [NSError errorWithCode:code userInfo:@{NSLocalizedDescriptionKey : localizedFailureReason}];
}

+ (NSString *)stringFromCode:(NSErrorCode)code {
    switch (code) {
        case NSErrorCodeGeneral:
            return @"General error";
        default:
            return @"Unknown";
    }
}
@end
