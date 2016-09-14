//
//  ZZHomeListMateView.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/8.
//  Copyright © 2016年 赵哲. All rights reserved.
//

#import "ZZHomeListMateView.h"

@interface ZZHomeListMateView ()
/**  按钮数组 */
@property (nonatomic, strong) NSArray * mateBtnArray;

@end

@implementation ZZHomeListMateView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}
#pragma mark - setup
- (void)setup
{
    CGFloat distance = (ZZScreenWidth - ZZRealValue(1)) /self.mateBtnArray.count ;
    //布局竖线
    for (NSInteger i = 0; i < self.mateBtnArray.count - 1; i++) {
        UIView *lineView = [[UIView alloc] init];
        lineView.backgroundColor = [UIColor grayColor];
        [self addSubview:lineView];
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(ZZRealValue(5));
            make.bottom.offset(ZZRealValue(-5));
            make.width.offset(ZZRealValue(1));
            make.left.offset(distance * (i + 1));
        }];
    }
    
    for (NSInteger i = 0; i < self.mateBtnArray.count; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.tag = 1000 + i;
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:self.mateBtnArray[i] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [self addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_offset(CGSizeMake(distance, self.ZZ_height));
            make.top.offset(0);
            make.left.offset((distance + ZZRealValue(1)) * i);
        }];
    }
}
#pragma mark - target
- (void)buttonAction:(UIButton * )sender
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(ZZHomeListMateView_CilckBtn:)]) {
        [self.delegate ZZHomeListMateView_CilckBtn:sender];
    }
}
#pragma mark - 懒加载
- (NSArray *)mateBtnArray
{
    if (!_mateBtnArray) {
        _mateBtnArray  = @[@"附近",@"价格",@"排序",@"更多"];
    }
    return _mateBtnArray;
}
@end
