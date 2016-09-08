//
//  ZZHomeListMateView.h
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/8.
//  Copyright © 2016年 lanou3g-22赵哲. All rights reserved.
//

#import <UIKit/UIKit.h>
//匹配工具栏
@protocol ZZHomeListMateViewDelegate <NSObject>



@end


@interface ZZHomeListMateView : UIView
/**  <#Description#> */
@property (nonatomic, weak) id <ZZHomeListMateViewDelegate> delegate;
@end
