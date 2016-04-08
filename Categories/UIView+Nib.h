//
//  UIView+Nib.h
//  VideoRendering
//
//  Created by Zakk Hoyt on 4/8/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Nib)

+ (UINib *)nibNamed:(NSString *)nibName;
+ (UINib *)nib;
+ (instancetype)loadInstanceWithNib:(UINib *)nib;
+ (instancetype)loadInstanceFromNib;

@end
