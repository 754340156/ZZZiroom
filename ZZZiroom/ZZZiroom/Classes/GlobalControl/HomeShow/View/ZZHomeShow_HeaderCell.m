//
//  ZZHomeShow_HeaderCell.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/19.
//  Copyright © 2016年 lanou3g-22赵哲. All rights reserved.
//

#import "ZZHomeShow_HeaderCell.h"
#import <SDCycleScrollView/SDCycleScrollView.h>
@interface ZZHomeShow_HeaderCell ()<SDCycleScrollViewDelegate>
/**  轮播图 */
@property (nonatomic, strong) SDCycleScrollView * scrollView;
/**  title */
@property (nonatomic, strong) UILabel * titleLabel;
/**  price */
@property (nonatomic, strong) UILabel * priceLabel;
/**  付款方式 */
@property (nonatomic, strong) UIButton * paymentBtn;
/**  房屋特色 */
@property (nonatomic, strong) UILabel * housingLabel;
/**  黑线 */
@property (nonatomic, strong) UIView * graylineV1;
/**  黑线 */
@property (nonatomic, strong) UIView * graylineV2;
/**  面积 */
@property (nonatomic, strong) UILabel * areaLabel;
/**  楼层 */
@property (nonatomic, strong) UILabel * storeyLabel;
/**  朝向 */
@property (nonatomic, strong) UILabel * orientationLabel;
/**  标签容器 */
@property (nonatomic, strong) UIView * tagView;
@end

@implementation ZZHomeShow_HeaderCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setup];
    }
    return self;
}
#pragma mark - setup
- (void)setup
{
    //图片轮播
    self.scrollView = [SDCycleScrollView cycleScrollViewWithFrame:self.frame delegate:self placeholderImage:[UIImage imageNamed:@"zr_placeholder"]];
    [self.contentView addSubview:self.scrollView];
    
    //title
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont systemFontOfSize:ZZRealValue55(17)];
    [self.contentView addSubview:self.titleLabel];
    
    //价格
    self.priceLabel = [[UILabel alloc] init];
    self.priceLabel.textColor = kFontOrangeColor;
    self.priceLabel.textAlignment = NSTextAlignmentRight;
    self.priceLabel.font = [UIFont systemFontOfSize:ZZRealValue55(15)];
    NSMutableAttributedString * attributedStr = [[NSMutableAttributedString alloc] init];
    [attributedStr setAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:ZZRealValue55(18)]} range:NSMakeRange(1, 4)];
#warning 修改字体富文本界限有问题
    self.priceLabel.attributedText = attributedStr;
    [self.contentView addSubview:self.priceLabel];
    
    //付款方式
    self.paymentBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.paymentBtn.titleLabel.font = [UIFont systemFontOfSize:ZZRealValue55(15)];
    [self.paymentBtn setImage:[UIImage imageNamed:@"er_payway"]forState:UIControlStateNormal];
    [self.paymentBtn setTitle:@"付款方式" forState:UIControlStateNormal];
    [self.paymentBtn addTarget:self action:@selector(paymentAction) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:self.paymentBtn];
    
    
    //房屋特色
    self.housingLabel = [[UILabel alloc] init];
    self.housingLabel.textColor = [UIColor grayColor];
    self.housingLabel.text = @"房间特色";
    self.housingLabel.font = [UIFont systemFontOfSize:ZZRealValue55(13)];
    [self.contentView addSubview:self.housingLabel];
    //两条黑线
    self.graylineV1 = [[UIView alloc] init];
    [self.contentView addSubview:self.graylineV1];
    self.graylineV2 = [[UIView alloc] init];
    [self.contentView addSubview:self.graylineV2];
    
    //面积
    self.areaLabel = [[UILabel alloc] init];
    self.areaLabel.font = [UIFont systemFontOfSize:ZZRealValue55(15)];
    [self.contentView addSubview:self.areaLabel];
    
    //楼层
    self.storeyLabel = [[UILabel alloc] init];
    [self.storeyLabel sizeToFit];
    self.storeyLabel.textAlignment = NSTextAlignmentCenter;
    self.storeyLabel.font = [UIFont systemFontOfSize:ZZRealValue55(15)];
    [self.contentView addSubview:self.storeyLabel];
    
    //朝向
    self.orientationLabel = [[UILabel alloc] init];
    self.orientationLabel.textAlignment = NSTextAlignmentRight;
    self.orientationLabel.font = [UIFont systemFontOfSize:ZZRealValue55(15)];
    [self.contentView addSubview:self.orientationLabel];
    
    self.tagView = [[UIView alloc] init];
    [self.contentView addSubview:self.tagView];
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(0);
        make.left.offset(0);
        make.right.offset(0);
        make.height.offset(ZZRealValue55(275));
    }];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(0);
        make.top.equalTo(self.scrollView.mas_bottom);
        make.right.offset(0);
        make.height.offset(ZZRealValue55(45));
    }];
    [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleLabel.mas_bottom);
        make.left.offset(0);
        make.size.mas_offset(CGSizeMake(kScreenWidth / 2, ZZRealValue55(35)));
    }];
    [self.paymentBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.priceLabel.mas_right).offset(ZZRealValue55(10));
        make.top.equalTo(self.scrollView.mas_bottom);
        make.right.offset(0);
        make.height.offset(ZZRealValue55(35));
    }];
    
    [self.housingLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(0);
        make.centerX.offset(0);
        make.size.mas_offset(CGSizeMake(ZZRealValue55(50), ZZRealValue55(20)));
    }];
    [self.graylineV1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.housingLabel.mas_centerY);
        make.left.offset(ZZRealValue55(15));
        make.right.equalTo(self.housingLabel.mas_left).offset(ZZRealValue55(-15));
        make.height.offset(1);
    }];
    [self.graylineV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.housingLabel.mas_centerY);
        make.left.equalTo(self.housingLabel.mas_right).offset(ZZRealValue55(15));
        make.right.offset(ZZRealValue55(-15));
        make.height.offset(1);
    }];
    [self.storeyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.offset(0);
        make.top.equalTo(self.housingLabel.mas_bottom).offset(ZZRealValue55(5));
        make.height.offset(ZZRealValue55(25));
    }];
    [self.areaLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.graylineV1.mas_left);
        make.right.equalTo(self.storeyLabel.mas_left).offset(ZZRealValue55(10));
        make.height.offset(ZZRealValue55(25));
        make.centerY.equalTo(self.storeyLabel.mas_centerY);
    }];
    [self.orientationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.storeyLabel.mas_centerY);
        make.left.equalTo(self.storeyLabel.mas_right).offset(ZZRealValue55(10));
        make.right.equalTo(self.graylineV2.mas_right);
        make.height.offset(ZZRealValue55(25));
    }];
    [self.tagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.offset(0);
        make.top.equalTo(self.storeyLabel.mas_bottom);
    }];
}
#warning 动态增加下面的标签

#pragma mark -  SDCycleScrollViewDelegate
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(ZZHomeShow_HeaderCellDelegate_clickImageWithIndex:)]) {
        [self.delegate ZZHomeShow_HeaderCellDelegate_clickImageWithIndex:index];
    }
}
#pragma mark - Action
- (void)paymentAction
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(ZZHomeShow_HeaderCellDelegate_clickPaymentBtn)]) {
        [self.delegate ZZHomeShow_HeaderCellDelegate_clickPaymentBtn];
    }
}
@end
