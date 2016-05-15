//
//  AppVersion.h
//  ZHDashCam
//
//  Created by Zakk Hoyt on 5/14/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppVersion : NSObject
+ (NSString *)appTitle;
+ (NSString *)bundleIdentifier;
+ (NSString *)versionString;
+ (NSString *)buildAndVersionString;
+ (NSString *)executableString;

@end
