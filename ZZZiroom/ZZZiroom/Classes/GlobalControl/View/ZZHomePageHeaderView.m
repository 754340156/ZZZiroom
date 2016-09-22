//
//  ZZHomePageHeaderView.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/8.
//  Copyright © 2016年 赵哲. All rights reserved.
//

#import "ZZHomePageHeaderView.h"

@interface ZZHomePageHeaderView ()
/**  高清大图 */
@property (nonatomic, strong) UIImageView * imageView;
/**  搜索按钮 */
@property (nonatomic, strong) UIButton * searchBtn;
/**  大标题 */
@property (nonatomic, strong) UILabel * titleLabel;
/**  小标题 */
@property (nonatomic, strong) UILabel * subTitleLabel;
@end


@implementation ZZHomePageHeaderView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self  setup];
    }
    return self;
}
#pragma mark - setup
- (void)setup
{
    self.imageView = [[UIImageView alloc] init];
    [self addSubview:self.imageView];
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(0);
        make.top.offset(0);
        make.right.offset(0);
#warning 动态计算高度
    }];
    
    self.searchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.searchBtn setCornerWithRadius:ZZRealValue47(25) borderWidth:0 borderColor:nil];
    [self addSubview:self.searchBtn];
    [self.searchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_offset(CGSizeMake(ZZRealValue47(50), ZZRealValue47(50)));
        make.right.offset(-ZZRealValue47(20));
        make.centerY.equalTo(self.imageView.mas_bottom);
    }];
    
    self.titleLabel = [[UILabel alloc] init];
    [self.titleLabel sizeToFit];
    [self addSubview:self.titleLabel];
    self.titleLabel.font = [UIFont systemFontOfSize:ZZRealValue47(15) weight:20];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(ZZRealValue47(20));
        make.top.equalTo(self.imageView.mas_bottom).offset(ZZRealValue47(40));
        make.height.offset(ZZRealValue47(40));
    }];
    
    self.subTitleLabel = [[UILabel alloc] init];
    [self.subTitleLabel sizeToFit];
    [self addSubview:self.subTitleLabel];
    self.subTitleLabel.font = [UIFont systemFontOfSize:ZZRealValue47(14)];
    self.subTitleLabel.textColor = [UIColor grayColor];
    [self.subTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleLabel.mas_bottom);
        make.left.equalTo(self.titleLabel.mas_left);
        make.height.offset(ZZRealValue47(20));
    }];
}

- (void)setModel:(Model *)model
{
    
}
@end
