//
//  ZZHomeListMateView.h
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/8.
//  Copyright © 2016年 赵哲. All rights reserved.
//

#import <UIKit/UIKit.h>
//匹配工具栏
@protocol ZZHomeListMateViewDelegate <NSObject>
/**  点击按钮 */
- (void)ZZHomeListMateView_CilckBtn:(UIButton *)btn;

@end


@interface ZZHomeListMateView : UIView
/**  <#Description#> */
@property (nonatomic, weak) id <ZZHomeListMateViewDelegate> delegate;
/**  传入的父视图 */
@property (nonatomic, strong) UIView * superView;

@end
