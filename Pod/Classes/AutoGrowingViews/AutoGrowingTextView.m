//
//  AutoGrowingTextView.m
//  Pods
//
//  @version 0.3.0
//  @author Jiakai Lian (jiakai.lian@gmail.com)
//

/*
 
 Copyright (c) 2015 Jiakai Lian <jiakai.lian@gmail.com>
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is furnished
 to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 
 */

#import "AutoGrowingTextView.h"

@interface AutoGrowingTextView ()

@property(strong, nonatomic) NSLayoutConstraint *heightConstraint;
@property(strong, nonatomic) NSLayoutConstraint *maxHeightConstraint;
@property(strong, nonatomic) NSLayoutConstraint *minHeightConstraint;

@end

@implementation AutoGrowingTextView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self commonInit];
    }
    return self;
}

- (void)awakeFromNib
{
    [self commonInit];
}

- (void)commonInit
{
    // If we are using auto layouts, than get a handler to the height constraint.
    for (NSLayoutConstraint *constraint in self.constraints)
    {
        if (constraint.firstAttribute == NSLayoutAttributeHeight)
        {
            self.heightConstraint = constraint;
            break;
        }
    }
    if (!self.heightConstraint)
    {
        // TODO: We might use auto layouts but set the height of the textView by using a top + bottom constraints. In this case we would want to manually create a height constraint
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    if (self.heightConstraint)
    {
        [self handleLayoutWithAutoLayouts];
    }
    else
    {
        [self handleLayoutWithoutAutoLayouts];
    }

    // Center vertically
    // We're  supposed to have a maximum height constraint in code for the text view which will makes the intrinsicSide eventually higher then the height of the text view - if we had enough text.
    // This code only center vertically the text view while the context size is smaller/equal to the text view frame.
    if (self.intrinsicContentSize.height <= self.bounds.size.height)
    {
        CGFloat topCorrect = (self.bounds.size.height - self.contentSize.height * [self zoomScale]) / 2.0;
        topCorrect = (topCorrect < 0.0 ? 0.0 : topCorrect);
        self.contentOffset = (CGPoint) {.x = 0, .y = -topCorrect};
    }
}

- (void)handleLayoutWithAutoLayouts
{
    CGSize intrinsicSize = self.intrinsicContentSize;
    if (self.minHeight)
    {
        intrinsicSize.height = MAX(intrinsicSize.height, self.minHeight);
    }
    if (self.maxHeight)
    {
        intrinsicSize.height = MIN(intrinsicSize.height, self.maxHeight);
    }
    self.heightConstraint.constant = intrinsicSize.height;
}

- (void)handleLayoutWithoutAutoLayouts
{
    // TODO:
}

- (CGSize)intrinsicContentSize
{
    CGSize intrinsicContentSize = self.contentSize;

    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
    {
        intrinsicContentSize.width += (self.textContainerInset.left + self.textContainerInset.right) / 2.0f;
        intrinsicContentSize.height += (self.textContainerInset.top + self.textContainerInset.bottom) / 2.0f;
    }

    return intrinsicContentSize;
}

@end
