//
//  UIView+Extension.h
//  ZZZiroom
//
//  Created by 赵哲 on 16/8/9.
//  Copyright © 2016年 赵哲. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)
/**
 *  快速设置控件的位置
 */
@property (nonatomic, assign) CGSize ZZ_size;
@property (nonatomic, assign) CGFloat ZZ_width;
@property (nonatomic, assign) CGFloat ZZ_height;
@property (nonatomic, assign) CGFloat ZZ_x;
@property (nonatomic, assign) CGFloat ZZ_y;
@property (nonatomic, assign) CGFloat ZZ_centerX;
@property (nonatomic, assign) CGFloat ZZ_centerY;
/**
 *  快速根据xib创建View
 */
+ (instancetype)ZZ_viewFromXib;
/**
 *  uiview高效切圆角
 *  @param corners               四个角
 *  @param cornerRadio           半径
 */
- (void)setMaskTo:(UIView *)view byRoundingCorners:(UIRectCorner)corners cornerRadio:(CGFloat )cornerRadio;
/**
 *  uiview一般切圆角
 */
- (void)setCornerWithRadius:(CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
/**
 *  判断self和view是否重叠
 */
- (BOOL)ZZ_intersectsWithView:(UIView *)view;
@end
