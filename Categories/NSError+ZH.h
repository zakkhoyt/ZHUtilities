//
//  NSError+ZH.h
//  ZH
//
//  Created by Zakk Hoyt on 4/27/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *NSErrorZHDomain = @"ZH";

typedef enum {
    NSErrorCodeGeneral = -10001,
} NSErrorCode;

@interface NSError (ZH)

+ (NSError *)error;
+ (NSError *)errorWithCode:(NSErrorCode)code;
+ (NSError *)errorWithCode:(NSErrorCode)code localizedFailureReason:(NSString *)localizedFailureReason;
+ (NSError *)errorWithCode:(NSErrorCode)code userInfo:(NSDictionary *)userInfo;

@end
