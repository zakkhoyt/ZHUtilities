//
//  StoryboardNibView.h
//  RedHenBaby
//
//  Created by Zakk Hoyt on 4/29/16.
//  Copyright © 2016 Willowtree Apps. All rights reserved.
//

//  A base class to inherit from so that we can use nibs within storyboards.
//  To use follow these steps:
//  1.) Create files for your UIView subclass .h, .m, .xib
//  2.) In the nib you created, set "File Owner" as the custom class, not the View
//  3.) Wire up your outlets and actions to "File Owner"
//  4.) In a storyboard, just layout a UIView, set the constraints, then set the class to type to what you created in 1.)
//
//  StoryboardNibView will insert your nib as a subview of the storyboard in a property called contentView.
//  If you override initWithFrame or initWithCoder, be sure to call super

#import <UIKit/UIKit.h>

@interface StoryboardNibView : UIView
@property(nonatomic, strong) UIView *contentView;
@end
