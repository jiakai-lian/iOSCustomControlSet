//
//  UIView+Shadow.m
//  Pods
//
//  Created by jiakai lian on 9/07/2015.
//
//

#import "UIView+Shadow.h"

@implementation UIView (Shadow)

@dynamic shadowOffset,shadowColor,shadowRadius,shadowOpacity;

- (void)setShadowColor:(UIColor *)shadowColor
{
    self.layer.shadowColor = shadowColor.CGColor;
}

- (void)setShadowRadius:(CGFloat)shadowRadius
{
    self.layer.shadowRadius = shadowRadius;
}

- (void)setShadowOffset:(CGSize)shadowOffset
{
    self.layer.shadowOffset = shadowOffset;
}

-(void)setShadowOpacity:(CGFloat)shadowOpacity
{
    self.layer.shadowOpacity = shadowOpacity;
}


@end
