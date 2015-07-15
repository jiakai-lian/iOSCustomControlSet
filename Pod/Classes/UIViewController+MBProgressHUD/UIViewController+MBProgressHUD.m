//
//  UIViewController+MBProgressHUD.m
//  powertoolz
//
//  Created by jiakai lian on 30/03/2015.
//  Copyright (c) 2015 jeylabs. All rights reserved.
//

#import "UIViewController+MBProgressHUD.h"


@implementation UIViewController (MBProgressHUD)

- (MBProgressHUD *)mb_showProgressHUDwithTitle:(NSString *)title andMessage:(NSString *)message
{
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:self.view];
    HUD.labelText = title;
    HUD.detailsLabelText = message;
    HUD.mode = MBProgressHUDModeIndeterminate;
    [[self topViewController].view addSubview:HUD];

    [HUD show:YES];
    return HUD;
}

- (void)mb_hideProgressHUD:(MBProgressHUD *)HUD
{
    [HUD hide:YES];
}

#pragma mark - find top view controller
- (UIViewController *)topViewController
{
    return [self topViewControllerWithRootViewController:[UIApplication sharedApplication].keyWindow.rootViewController];
}

- (UIViewController *)topViewControllerWithRootViewController:(UIViewController *)rootViewController
{
    if ([rootViewController isKindOfClass:[UITabBarController class]])
    {
        UITabBarController *tabBarController = (UITabBarController *) rootViewController;
        return [self topViewControllerWithRootViewController:tabBarController.selectedViewController];
    }
    else if ([rootViewController isKindOfClass:[UINavigationController class]])
    {
        UINavigationController *navigationController = (UINavigationController *) rootViewController;
        return [self topViewControllerWithRootViewController:navigationController.visibleViewController];
    }
    else if (rootViewController.presentedViewController)
    {
        UIViewController *presentedViewController = rootViewController.presentedViewController;
        return [self topViewControllerWithRootViewController:presentedViewController];
    }
    else
    {
        return rootViewController;
    }
}
@end
