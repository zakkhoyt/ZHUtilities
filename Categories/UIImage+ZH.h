//
//  UIImage+ZH.h
//  VideoRendering
//
//  Created by Zakk Hoyt on 3/27/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZH)
- (UIImage *)imageAtRect:(CGRect)rect;
- (UIImage *)imageByScalingProportionallyToMinimumSize:(CGSize)targetSize;
- (UIImage *)imageByScalingProportionallyToSize:(CGSize)targetSize;
- (UIImage *)imageByScalingToSize:(CGSize)targetSize;
- (UIImage *)imageRotatedByRadians:(CGFloat)radians;
- (UIImage *)imageRotatedByDegrees:(CGFloat)degrees;
@end
