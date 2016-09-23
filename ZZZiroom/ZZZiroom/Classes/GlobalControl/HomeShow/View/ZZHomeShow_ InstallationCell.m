//
//  ZZHomeShow_ InstallationCell.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/23.
//  Copyright © 2016年 zhaozhe. All rights reserved.
// 配置设置cell

#import "ZZHomeShow_ InstallationCell.h"

@interface ZZHomeShow__InstallationCell ()
/**  title */
@property (nonatomic, strong) UILabel * titleLabel;
/**  灰线 */
@property (nonatomic, strong) UIView * grayLineV;
/**  容器view */
@property (nonatomic, strong) UIView * tagView;


@end

@implementation ZZHomeShow__InstallationCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self  setup];
    }
    return self;
}
#pragma mark - setup
- (void)setup
{
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.font = [UIFont systemFontOfSize:ZZRealValue55(18)];
    self.titleLabel.text = @"- 配置设施 -";
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:self.titleLabel];
    
    self.grayLineV = [[UIView alloc] init];
    self.grayLineV.backgroundColor =[UIColor lightGrayColor];
    [self.contentView addSubview:self.grayLineV];
    
    self.tagView = [[UIView alloc] init];
    [self.contentView addSubview:self.tagView];
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(ZZRealValue55(5));
        make.left.offset(0);
        make.right.offset(0);
        make.height.offset(ZZRealValue55(25));
    }];
    [self.grayLineV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleLabel.mas_bottom).offset(ZZRealValue55(5));
        make.left.offset(ZZRealValue47(15));
        make.right.offset(ZZRealValue47(-15));
        make.height.offset(1);
    }];
    
    [self.tagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.offset(0);
        make.top.equalTo(self.grayLineV.mas_bottom);
    }];
}
#pragma mark - Action
@end
