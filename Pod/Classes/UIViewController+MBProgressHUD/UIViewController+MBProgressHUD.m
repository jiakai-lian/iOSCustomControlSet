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
    MBProgressHUD *HUD = [MBProgressHUD showHUDAddedTo:self.topViewController.view animated:YES];
    HUD.labelText = title;
    HUD.detailsLabelText = message;
    HUD.mode = MBProgressHUDModeIndeterminate;
    
    return HUD;
}

- (void)mb_hideProgressHUD:(MBProgressHUD *)HUD
{
    [HUD hide:YES];
//    [MBProgressHUD hideAllHUDsForView:self.topViewController.view animated:YES];
}

#pragma mark - find top view controller
- (UIViewController *)topViewController
{
    return [self topViewControllerWithRootViewController:[UIApplication sharedApplication].keyWindow.rootViewController];
}

- (UIViewController *)topViewControllerWithRootViewController:(UIViewController *)rootViewController
{
    static NSString * CLASS_NAME_SWCONTROLLER = @"SWRevealViewController";
    static NSString * KEY_PATH_SWCONTROLLER_FRONT_CONTROLLER = @"frontViewController";
    
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
    //fix issue: when use with SWRevealViewController, the method cannot find the right top view controller
    else if ([NSStringFromClass([rootViewController class]) isEqualToString:CLASS_NAME_SWCONTROLLER] && [rootViewController valueForKeyPath:KEY_PATH_SWCONTROLLER_FRONT_CONTROLLER])
    {
        return  [self topViewControllerWithRootViewController:[rootViewController valueForKeyPath:KEY_PATH_SWCONTROLLER_FRONT_CONTROLLER]];
    }
    
    return rootViewController;
}
@end
