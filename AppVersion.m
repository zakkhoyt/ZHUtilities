//
//  AppVersion.m
//  ZHDashCam
//
//  Created by Zakk Hoyt on 5/14/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

#import "AppVersion.h"

@implementation AppVersion

+ (NSString *)appTitle {
    NSString *appName = [[NSBundle mainBundle] infoDictionary][@"CFBundleName"];
    NSString *bundleID = [[NSBundle mainBundle] bundleIdentifier];
    return bundleID;
}

+ (NSString *)versionString {
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *appVersion = [bundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    return [NSString stringWithFormat:@"%@", appVersion];
}
+ (NSString *)buildAndVersionString {
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *appVersion = [bundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    NSString *appBuild = [bundle objectForInfoDictionaryKey:(NSString *)kCFBundleVersionKey];
    return [NSString stringWithFormat:@"%@.%@", appVersion, appBuild];
}
+ (NSString *)executableString {
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *executable = [bundle objectForInfoDictionaryKey:(NSString *)kCFBundleExecutableKey];
    return executable;
}

@end
