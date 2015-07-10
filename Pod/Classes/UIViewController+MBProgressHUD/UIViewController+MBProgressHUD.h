//
//  UIViewController+MBProgressHUD.h
//  powertoolz
//
//  Created by jiakai lian on 30/03/2015.
//  Copyright (c) 2015 jeylabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MBProgressHUD/MBProgressHUD.h>

@interface UIViewController (MBProgressHUD)

- (MBProgressHUD *)MB_showProgressHUDwithTitle:(NSString *)title andMessage:(NSString *)message;

- (void)MB_hideProgressHUD:(MBProgressHUD *)HUD;

@end
