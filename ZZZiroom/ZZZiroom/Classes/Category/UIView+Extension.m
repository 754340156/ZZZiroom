//
//  UIView+Extension.m
//  ZZZiroom
//
//  Created by 赵哲 on 16/8/9.
//  Copyright © 2016年 赵哲. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)
- (BOOL)ZZ_intersectsWithView:(UIView *)view
{
    //都先转换为相对于窗口的坐标，然后进行判断是否重合
    CGRect selfRect = [self convertRect:self.bounds toView:nil];
    CGRect viewRect = [view convertRect:view.bounds toView:nil];
    return CGRectIntersectsRect(selfRect, viewRect);
}
//
- (void)setMaskTo:(UIView *)view byRoundingCorners:(UIRectCorner)corners cornerRadio:(CGFloat )cornerRadio
{
    UIBezierPath *rounded = [UIBezierPath bezierPathWithRoundedRect:view.bounds byRoundingCorners:corners cornerRadii:CGSizeMake(cornerRadio, cornerRadio)];
    CAShapeLayer *shape = [[CAShapeLayer alloc] init];
    [shape setPath:rounded.CGPath];
    view.layer.mask = shape;
}
- (void)setCornerWithRadius:(CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor
{
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = radius;
    self.layer.borderWidth = borderWidth;
    self.layer.borderColor = borderColor.CGColor;
}
+ (instancetype)ZZ_viewFromXib
{
    
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].lastObject;
}

- (CGFloat)ZZ_centerX
{
    return self.center.x;
}
- (void)setZZ_centerX:(CGFloat)ZZ_centerX
{
    CGPoint center = self.center;
    center.x = ZZ_centerX;
    self.center = center;
}
- (CGFloat)ZZ_centerY
{
    return self.center.y;
}
- (void)setZZ_centerY:(CGFloat)ZZ_centerY
{
    CGPoint center = self.center;
    center.y = ZZ_centerY;
    self.center = center;
}
- (CGSize)ZZ_size
{
    return self.frame.size;
}

- (void)setZZ_size:(CGSize)ZZ_size
{
    CGRect frame = self.frame;
    frame.size = ZZ_size;
    self.frame = frame;
}

- (CGFloat)ZZ_width
{
    return self.frame.size.width;
}

- (CGFloat)ZZ_height
{
    return self.frame.size.height;
}

- (void)setZZ_width:(CGFloat)ZZ_width
{
    CGRect frame = self.frame;
    frame.size.width = ZZ_width;
    self.frame = frame;
}
- (void)setZZ_height:(CGFloat)ZZ_height
{
    CGRect frame = self.frame;
    frame.size.height = ZZ_height;
    self.frame = frame;
}

- (CGFloat)ZZ_x
{
    return self.frame.origin.x;
}

- (void)setZZ_x:(CGFloat)ZZ_x
{
    CGRect frame = self.frame;
    frame.origin.x = ZZ_x;
    self.frame = frame;
}

- (CGFloat)ZZ_y
{
    return self.frame.origin.y;
}

- (void)setZZ_y:(CGFloat)ZZ_y
{
    CGRect frame = self.frame;
    frame.origin.y = ZZ_y;
    self.frame = frame;
}

@end
