//
//  UIViewController+AlertController.h
//  ZH
//
//  Created by Zakk Hoyt on 4/21/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^UIViewControllerAlertButtonBlock)();
@interface UIViewController (AlertController)

- (void)presentAlertDialogWithTitle:(NSString *)title
                            message:(NSString *)message
                            button1:(NSString *)button1
                       button1Block:(UIViewControllerAlertButtonBlock)button1Block;

- (void)presentAlertDialogWithTitle:(NSString *)title
                            message:(NSString *)message
                            button1:(NSString *)button1
                            button2:(NSString *)button2
                       button1Block:(UIViewControllerAlertButtonBlock)button1Block
                       button2Block:(UIViewControllerAlertButtonBlock)button2Block;

- (void)presentAlertDialogWithMessage:(NSString *)message;
- (void)presentAlertDialogWithTitle:(NSString *)title message:(NSString *)message;
- (void)presentAlertDialogWithTitle:(NSString *)title errorAsMessage:(NSError *)error;
@end
