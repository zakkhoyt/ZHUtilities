//
//  StoryboardNibView.m
//  RedHenBaby
//
//  Created by Zakk Hoyt on 4/29/16.
//  Copyright © 2016 Willowtree Apps. All rights reserved.
//

#import "StoryboardNibView.h"

@implementation StoryboardNibView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self xibSetup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self xibSetup];
    }
    return self;
}

- (void)xibSetup {
    _contentView = [self loadFromNib];
    _contentView.frame = self.bounds;
    _contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.backgroundColor = [UIColor clearColor];
    [self addSubview:_contentView];
}

- (UIView *)loadFromNib {
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:[NSBundle mainBundle]];
    UIView *view = [[nib instantiateWithOwner:self options:nil] firstObject];
    return view;
}

@end
