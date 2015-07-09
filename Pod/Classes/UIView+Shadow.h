//
//  UIView+Shadow.h
//  Pods
//
//  Created by jiakai lian on 9/07/2015.
//
//

#import <UIKit/UIKit.h>

@interface UIView (Shadow)

@property (nonatomic, copy) IBInspectable UIColor *shadowColor;
@property (nonatomic, assign) IBInspectable CGFloat shadowRadius;
@property (nonatomic, assign) IBInspectable CGSize shadowOffset;
@property (nonatomic, assign) IBInspectable CGFloat shadowOpacity;

@end
