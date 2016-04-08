//
//  UIView+Nib.m
//  VideoRendering
//
//  Created by Zakk Hoyt on 4/8/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

#import "UIView+Nib.h"

@implementation UIView (Nib)

+ (UINib *)nibNamed:(NSString *)nibName {
    return [UINib nibWithNibName:nibName bundle:nil];
}

+ (UINib *)nib {
    return [self nibNamed:NSStringFromClass([self class])];
}

+ (instancetype)loadInstanceWithNib:(UINib *)nib {
    UIView *result = nil;
    NSArray *topLevelObjects = [nib instantiateWithOwner:nil options:nil];
    for (id anObject in topLevelObjects) {
        if ([anObject isKindOfClass:[self class]]) {
            result = anObject;
            break;
        }
    }

    return result;
}

+ (instancetype)loadInstanceFromNib {
    return [self loadInstanceWithNib:[self nib]];
}
@end
