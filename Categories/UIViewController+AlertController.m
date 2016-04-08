//
//  UIViewController+AlertController.m
//  ZH
//
//  Created by Zakk Hoyt on 4/21/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import "UIViewController+AlertController.h"

@implementation UIViewController (AlertController)

- (void)presentAlertDialogWithTitle:(NSString *)title
                            message:(NSString *)message
                            button1:(NSString *)button1
                       button1Block:(UIViewControllerAlertButtonBlock)button1Block {
    [self presentAlertDialogWithTitle:title message:message button1:button1 button2:nil button1Block:button1Block button2Block:nil];
}

- (void)presentAlertDialogWithTitle:(NSString *)title
                            message:(NSString *)message
                            button1:(NSString *)button1
                            button2:(NSString *)button2
                       button1Block:(UIViewControllerAlertButtonBlock)button1Block
                       button2Block:(UIViewControllerAlertButtonBlock)button2Block {

    UIAlertController *ac = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];

    if (button1) {
        [ac addAction:[UIAlertAction actionWithTitle:button1 style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
                if (button1Block) {
                    button1Block();
                }
            }]];
    }

    if (button2) {
        [ac addAction:[UIAlertAction actionWithTitle:button1 style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
                if (button2Block) {
                    button2Block();
                }
            }]];
    }

    [self presentViewController:ac animated:YES completion:NULL];
}

- (void)presentAlertDialogWithMessage:(NSString *)message {
    [self presentAlertDialogWithTitle:nil message:message];
}

- (void)presentAlertDialogWithTitle:(NSString *)title message:(NSString *)message {
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [ac addAction:[UIAlertAction actionWithTitle:@"Okay" style:UIAlertActionStyleDefault handler:NULL]];
    [self presentViewController:ac animated:YES completion:NULL];
}

- (void)presentAlertDialogWithTitle:(NSString *)title errorAsMessage:(NSError *)error {
    [self presentAlertDialogWithTitle:nil message:error.userInfo.allValues.description];
}

@end
