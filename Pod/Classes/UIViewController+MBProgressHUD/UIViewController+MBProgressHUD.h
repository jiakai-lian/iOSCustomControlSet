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

- (MBProgressHUD *)MB_showProgessHUDwithTitle:(NSString *)title andMessage:(NSString *)message;

- (void)MB_hideProgessHUD:(MBProgressHUD *)HUD;

@end
