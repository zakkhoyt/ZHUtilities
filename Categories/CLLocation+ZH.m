//
//  CLLocation+ZH.m
//  VideoRendering
//
//  Created by Zakk Hoyt on 3/27/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

#import "CLLocation+ZH.h"

@implementation CLLocation (ZH)

-(NSString*)iso6709Notation {
    return [NSString stringWithFormat:@"%+08.4lf%+09.4lf/", self.coordinate.latitude, self.coordinate.longitude];
}
@end
